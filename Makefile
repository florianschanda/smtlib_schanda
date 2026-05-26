PYTHON_TARGETS=lib fptg *.py
THREADS=12
GROUPS=--group=fptg_f32 --group=fptg_other_small --group=fptg_other_large
# GROUPS=--group=fptg_f32
# GROUPS=--group=fptg_other_small
# GROUPS=
RUN_CMD=run --threads=$(THREADS) $(GROUPS) --filter-name=rem

.PHONY: style lint results sanity install

all: lint sanity

style:
	@python3 -m pycodestyle $(PYTHON_TARGETS)

lint: style
	@python3 -m pylint $(PYTHON_TARGETS)

sanity:
	@python3 -m fptg.random

manifest.json:
	@python3 -m run manifest

install:
	@python3 -m run install_all

clean:
	rm -f analysis.*.txt
	rm -f *.json

results: core_results \
	results.CVC5--1.3.4.json \
	results.Colibri_2--0.5.json

core_results: install \
	results.CVC5--main_symfpu-1.2.0-dual-license--no-mpfr.json \
	results.CVC5--main_symfpu-1.2.0-dual-license--mpfr.json \
	results.Z3--4.16.0.json \
	results.MathSAT--5.6.17pre4.json

results.CVC4--%.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc4 $*
	@python3 -m run analysis cvc4 $* > $(subst results,analysis,$(basename $@)).txt

results.CVC5--%.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc5 $*
	@python3 -m run analysis cvc5 $* > $(subst results,analysis,$(basename $@)).txt

results.CVC5--%--mpfr.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc5 $* --config=mpfr
	@python3 -m run analysis cvc5 $* --config=mpfr > $(subst results,analysis,$(basename $@)).txt

results.CVC5--%--no-mpfr.json: manifest.json
	@python3 -m run $(RUN_CMD) cvc5 $* --config=no-mpfr
	@python3 -m run analysis cvc5 $* --config=no-mpfr > $(subst results,analysis,$(basename $@)).txt

results.Z3--%.json: manifest.json
	@python3 -m run $(RUN_CMD) z3 $*
	@python3 -m run analysis z3 $* > $(subst results,analysis,$(basename $@)).txt

results.BitWuzla--%.json: manifest.json
	@python3 -m run $(RUN_CMD) bitwuzla $*
	@python3 -m run analysis bitwuzla $* > $(subst results,analysis,$(basename $@)).txt

results.MathSAT--%.json: manifest.json
	@python3 -m run $(RUN_CMD) mathsat $*
	@python3 -m run analysis mathsat $* > $(subst results,analysis,$(basename $@)).txt

results.Colibri_1--%.json: manifest.json
	@python3 -m run $(RUN_CMD) colibri_1 $*
	@python3 -m run analysis colibri_1 $* > $(subst results,analysis,$(basename $@)).txt

results.Colibri_2--%.json: manifest.json
	@python3 -m run $(RUN_CMD) colibri_2 $*
	@python3 -m run analysis colibri_2 $* > $(subst results,analysis,$(basename $@)).txt
