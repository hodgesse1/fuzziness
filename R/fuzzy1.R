#' adding normal variables to a vector
#' @param an input vector/number
#' @return the input \code{x} + \code{rnorm}
#' @examples
#'  fuzzy1(1:5)
fuzzy1 <- function(x) {
  return(x+rnorm(length(x)))
}
