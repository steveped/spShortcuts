#' @title Print large values using commas
#' 
#' @description Print large values using commas
#' 
#' @details A wrapper around the function \code{format}
#' 
#' @param x a numeric vector
#' 
#' @return A character vector of \code{length(x)}
#' 
#' @seealso \code{\link{format}}
#' 
#' @examples
#' x <- pi*1e6
#' commas(x)
#' 
#' @export
commas <- function(x, ..., digits = 0, big.mark = ","){
  stopifnot(is.numeric(x))
  format(as.integer(x), digits = digits, big.mark = big.mark, ...)
}