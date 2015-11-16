#' @title Add the significance asterisks
#' 
#' @description \code{aster} returns a character vector with the standard significance asterisks
#' 
#' @details
#' Simply adds the asterisks "***", "**", "*" & "." for values below 0.001, 0.01, 0.05 & 0.1 respectively.
#' 
#' Doesn't add any legend, so this is just a quick convenience function.
#' 
#' @param x a \code{numeric} vector
#' 
#' @return A character vector of \code{length(x)}
#' 
#' @seealso \code{\link{symnum}}
#' 
#' @examples
#' set.seed(42)
#' p <- rbeta(10, 1, 10)
#' data.frame(p = p, Sig = aster(p))
#' 
#' @export
aster <- function(x){
  
  stopifnot(is.vector(x), !is.list(x))
  
  out <- rep("", length(x))
  
  if (is.numeric(x)) {
    
    out[x<0.1] <- "."
    out[x<0.05] <- "*"
    out[x<0.01] <- "**"
    out[x<0.001] <- "***"
    out
    
  }
  else {
    out
  }
  
}