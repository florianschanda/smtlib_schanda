/*****************************************************************************
**                                                                          **
**                            smtlib_schanda                                **
**                                                                          **
**              Copyright (C) 2018, Altran UK Limited                       **
**                                                                          **
**  This file is part of smtlib_schamda.                                    **
**                                                                          **
**  smtlib_schamda is free software: you can redistribute it and/or modify  **
**  it under the terms of the GNU General Public License as published by    **
**  the Free Software Foundation, either version 3 of the License, or       **
**  (at your option) any later version.                                     **
**                                                                          **
**  smtlib_schanda is distributed in the hope that it will be useful,       **
**  but WITHOUT ANY WARRANTY; without even the implied warranty of          **
**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           **
**  GNU General Public License for more details.                            **
**                                                                          **
**  You should have received a copy of the GNU General Public License       **
**  along with smtlib_schanda. If not, see <http://www.gnu.org/licenses/>.  **
**                                                                          **
*****************************************************************************/

/* This helper program is for benchmarking solvers: it is simple enough to
   set ulimit resources, but if we set both a memory and a time limit it is
   not easy to work out which of the two triggered. In addition, if the
   program under test crashes it can also look as if any of the two have
   occured.

   There are helper programs that attempt this (for example
   https://github.com/pshved/timeout, which I tried to use as well) but the
   overhead tends to be large.

   Hence, this helper program monitors /proc/<pid/stat and terminates the
   program if either user time or virtual memory usage hits a limit.
*/

#define _GNU_SOURCE

#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/wait.h>

#include <assert.h>
#include <ctype.h>
#include <fcntl.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

float ticks_per_second;

void usage(char *name)
{
  printf("usage: %s [options] <command [arg...]>\n", name);
  printf("\n");
  printf("  -v        verbose (report measurements)\n");
  printf("  -t LIMIT  timelimit in seconds (default = 60 s)\n");
  printf("  -m LIMIT  memory limit in MiB  (default =  5 GiB)\n");
}

void parse(char *proc_stat_output, float *utime, uint64_t *vsize)
{
  char *p = proc_stat_output;
  int fld = 0;
  uint64_t tmp;

  /* see man page for proc which describes the format of /proc/<pid>/stat */
  /* TODO: deal with executables containing spaces, they would mess up the
     parsing */
  while (*p && fld < 100) {
    fld += 1;
    if (fld == 14) {
      sscanf(p, "%lu", &tmp);
      if (tmp == 0) {
        // Make sure to never report 0; this can happen in some cases where
        // programs more or less instantly terminate.
        tmp = 1;
      }
      *utime = (float)tmp / ticks_per_second;
    } else if (fld == 23) {
      sscanf(p, "%lu", &tmp);
      *vsize = tmp / (1024 * 1024);
    }

    while (*p && *p != ' ') ++p;
    if (*p) ++p;
  }
}

void get_stats(char *filename,
               float *utime,
               uint64_t *vsize,
               uint64_t *vsize_hwm)
{
  int fd = open(filename, O_RDONLY);
  char buf[4096];
  read(fd, buf, 4096);
  close(fd);

  parse(buf, utime, vsize);
  if (*vsize > *vsize_hwm) {
    *vsize_hwm = *vsize;
  }
}

int main(int argc, char **argv)
{
  /* Initialize */
  ticks_per_second = (float)sysconf(_SC_CLK_TCK);
  opterr = 0;

  int time_limit = 60;
  int mem_limit = 1024 * 5; // 5 GiB
  int verbose = 0;

  int c;
  while ((c = getopt(argc, argv, "vt:m:")) != -1) {
    switch (c) {
    case 'v':
      verbose = 1;
      break;
    case 't':
      time_limit = atoi(optarg);
      break;
    case 'm':
      mem_limit = atoi(optarg);
      break;
    case '?':
      usage(argv[0]);
      exit(1);
    }
  }

  /* Assemble arguments */
  char **arguments = malloc(sizeof(char*) * (1 + argc - optind));
  for (int i=optind; i < argc; ++i) {
    arguments[i-optind] = argv[i];
  }
  arguments[argc - optind] = NULL;

  if (argc - optind == 0 || time_limit < 1 || mem_limit < 1) {
    usage(argv[0]);
    exit(1);
  }

  int child_id = fork();
  if (child_id == 0) {
    /* This is the child, which just executes the given command. */
    execvp(argv[optind], arguments);
    assert(0);

  } else {
    /* This is the parent who will monitor the process each second. */
    char *filename;
    asprintf(&filename, "/proc/%u/stat", child_id);
    int running = 1;

    float    utime;
    uint64_t vsize;
    uint64_t vsize_hwm = 0;
    int      cycle     = 0;

    while(running) {
      /* Many solvers quickly return, it would add a lot of overhead ot
         sleep for 1 second on the first cycle. Consider 200k benchmarks, a
         guaranteed 1s time would mean a run would take at least 55 hours.

         Hence we check every 0.01 seconds for the first half second, and
         then each 0.1 second up to the two seconds; and from then onwards
         each second.
      */
      if (cycle  < 50) {
        cycle += 1;
        usleep(1000000 / 100);
      } else if (cycle < 65) {
        cycle += 1;
        usleep(1000000 / 10);
      } else {
        sleep(1);
      }

      /* Measure run-time and memory usage */
      get_stats(filename, &utime, &vsize, &vsize_hwm);

      if (verbose) {
        printf("utime = %.1f s, vsize = %lu MiB\n", utime, vsize);
      }

      if (utime > (float)time_limit) {
        running = 0;
        fprintf(stderr,
                "limiter::timeout %.1f s %u MiB\n", utime, vsize_hwm);
      } else if (vsize_hwm > mem_limit) {
        running = 0;
        fprintf(stderr,
                "limiter::oom %.1f s %u MiB\n", utime, vsize_hwm);
      }

      /* Check if the process has terminated */
      if (running) {
        int wstatus;
        int tmp = waitpid(child_id, &wstatus, WNOHANG);
        if (tmp != 0) {
          // Either error (-1) or the status has changed and we can stop.
          // We need to measure stats one last time so we can print the
          // most precise results possible.
          get_stats(filename, &utime, &vsize, &vsize_hwm);
          fprintf(stderr,
                  "limiter::ok %.3f s %u MiB\n", utime, vsize_hwm);
          break;
        }
      } else {
        kill(child_id, SIGKILL);
        waitpid(child_id, NULL, 0);
        break;
      }
    }
  }
}
