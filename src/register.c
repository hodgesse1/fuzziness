#include <R_ext/RS.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME:
 Check these declarations against the C/Fortran source code.
 */

/* .Fortran calls */
extern void F77_NAME(clean1)(void *, void *, void *);

static const R_FortranMethodDef FortranEntries[] = {
  {"clean1", (DL_FUNC) &F77_NAME(clean1), 3},
  {NULL, NULL, 0}
};

void R_init_fuzziness(DllInfo *dll)
{
  R_registerRoutines(dll, NULL, NULL, FortranEntries, NULL);
  R_useDynamicSymbols(dll, FALSE);
}


