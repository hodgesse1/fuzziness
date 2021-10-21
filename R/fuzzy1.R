#' adding normal variables to a vector
#' @param x a vector or number
#' @return the input \code{x} + \code{rnorm}
#' @examples
#'  fuzzy1(1:5)
fuzzy1 <- function(x) {
  return(x+rnorm(length(x)))
}
