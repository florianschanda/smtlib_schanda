#include <assert.h>
#include "defs.h"

#define rhs(x1,x2,x3)     (-8509962722502765./295147905179352825856. * (x1) \
 - 4810786678983139./147573952589676412928. * (x2) \
 - 8195275705635465./1180591620717411303424. * (x3) \
 + 5286590888873701./4503599627370496. * P2(x1) \
 - 3142771579399875./36028797018963968. * (x1) * (x2) \
 + 591108560874675./281474976710656. * P2(x2) \
 - 1261458973270647./2251799813685248. * (x1) * (x3) \
 - 5929053759940775./72057594037927936. * (x2) * (x3) \
 + 1259727915632095./562949953421312. * P2(x3) \
 - 1149275400895391./4503599627370496. * P3(x1) \
 - 7285847311712275./18014398509481984. * P2(x1) * (x2) \
 - 8440266932050133./18014398509481984. * (x1) * P2(x2) \
 - 4371217067606495./36028797018963968. * P3(x2) \
 + 458360830646393./1125899906842624. * P2(x1) * (x3) \
 + 2813070140505775./4503599627370496. * (x1) * (x2) * (x3) \
 + 8737122075031031./72057594037927936. * P2(x2) * (x3) \
 - 3341105181056463./4503599627370496. * (x1) * P2(x3) \
 - 7431847970290251./18014398509481984. * (x2) * P2(x3) \
 + 7134326653543871./288230376151711744. * P3(x3) \
 + 4419035466710003./36028797018963968. * P4(x1) \
 + 3191026702181451./18014398509481984. * P3(x1) * (x2) \
 + 8852489850214139./72057594037927936. * P2(x1) * P2(x2) \
 + 2762344079633701./36028797018963968. * (x1) * P3(x2) \
 + 974190988861453./36028797018963968. * P4(x2) \
 - 4592531851313069./36028797018963968. * P3(x1) * (x3) \
 - 1897745899402969./9007199254740992. * P2(x1) * (x2) * (x3) \
 - 3929173054132589./36028797018963968. * (x1) * P2(x2) * (x3) \
 - 5952875244748005./288230376151711744. * P3(x2) * (x3) \
 + 5462054773810051./36028797018963968. * P2(x1) * P2(x3) \
 + 5346287477580991./36028797018963968. * (x1) * (x2) * P2(x3) \
 + 92562462037723./2251799813685248. * P2(x2) * P2(x3) \
 - 8810307269401287./576460752303423488. * (x1) * P3(x3) \
 - 3135835432654057./576460752303423488. * (x2) * P3(x3) \
 + 569947876840979./288230376151711744. * P4(x3))


#define lhs (376932522065681012931./295147905179352825856.)

#define initial(x1,x2,x3) (0.9 <= (x1) && (x1) <= 1.1 && \
			   0. <= (x2) && (x2) <= 0.2 && \
			   0. <= (x3) && (x3) <= 0.2)

int main(int argc, char** argv)
{
  float_t x1;
  float_t x2;
  float_t x3;
//#ifdef BASE
  __CPROVER_assume(initial(x1,x2,x3));
  assert(rhs(x1,x2,x3) <= lhs);
//#endif
//#ifdef STEP
//#ifndef CBMC
  while (1)
  {
//#endif
//    __CPROVER_assume(rhs(x1,x2,x3) >= 0.);
//#ifdef CBMC
    __CPROVER_assume(rhs(x1,x2,x3) <= lhs);
//#endif

    float_t pre_x1 = x1;
    float_t pre_x2 = x2;
    float_t pre_x3 = x3;
    if (P2(x1) + P2(x2) + P2(x3) <= 1) 
    {
      x1 = 0.25 * (0.8 * P2(pre_x1) + 1.4 * pre_x2 - 0.5 * P2(pre_x3));
      x2 = 0.25 * (1.3 * pre_x1 + 0.5 * P2(pre_x3));
      x3 = 0.25 * (1.4 * pre_x2 + 0.8 * P2(pre_x3));
    } 
    else 
    {
      x1 = 0.25 * (0.8 * pre_x1 + 0.4 * P2(pre_x2));
      x2 = 0.25 * (-0.6 * P2(pre_x2) + 0.3 * P2(pre_x3));
      x3 = 0.25 * (0.5 * pre_x3 + 0.4 * P2(pre_x1));
    }

    assert(rhs(x1,x2,x3) <= lhs);
//#ifndef CBMC
  }
//#endif
//#endif
}
