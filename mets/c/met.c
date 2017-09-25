/* j/3/met.c
**
*/
#include "all.h"


/* functions
*/
  u3_noun
  u3gc_met(u3_atom a,
           u3_atom b)
  {
    if ( 0 == b ) {
      return 0;
    }
    else if ( !_(u3a_is_cat(a)) || (a >= 32) ) {
      return 1;
    }
    else {
      c3_w met_w = u3r_met(a, b);

      if ( !_(u3a_is_cat(met_w)) ) {
        return u3i_words(1, &met_w);
      }
      else return u3r_met(a, b);
    }
  }
  u3_noun
  u3yc_met(u3_noun cor)
  {
    u3_noun a, b;

    if ( (c3n == u3r_mean(cor, u3x_sam_2, &a, u3x_sam_3, &b, 0)) ||
         (c3n == u3ud(b)) ||
         (c3n == u3ud(a) && 0 != b) )
    {
      return u3m_bail(c3__exit);
    } else {
      return u3gc_met(a, b);
    }
  }

