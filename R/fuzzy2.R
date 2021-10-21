#' call the clean1 subroutine
#' @param n an integer length
#'
#' @return \code{y(n)} 4*normal variables + 2

fuzzy2 <- function(n) {
  xa <- rnorm(n)
  ya <- rep(0,n)
  return(.Fortran("clean1",n=as.integer(n),x=as.single(xa),y=as.single(ya)))
}
