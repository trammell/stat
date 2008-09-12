#include <math.h>
#include <libguile.h>

SCM
erf_wrapper(SCM x)
{
    return scm_make_real(erf(scm_num2dbl(x, "erf")));
}

void
init_erf()
{
    scm_c_define_gsubr("erf", 1, 0, 0, erf_wrapper);
}

