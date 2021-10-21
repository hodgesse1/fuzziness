#' call the clean1 subroutine
#' @param n an integer length
#' @param x vector of length n
#' @return \code{y(n)}

fuzzy2 <- function(n) {
  xa <- rnorm(n)
  ya <- rep(0,n)
  return(.Fortran("clean1",n=as.integer(n),x=as.single(xa),y=as.single(ya)))
}
