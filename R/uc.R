#' @title Return the upper left corner of a matrix
#' 
#' @description Return the upper left corner of a matrix
#' 
#' @details Just used for quick visual inspection of large matrices as an alternative to \code{head}
#' 
#' @param x a \code{matrix} or \code{data.frame}
#' @param nr the number of rows to return
#' @param nc the number of columns to return
#' 
#' @return an object of class(x)
#' 
#' @seealso \code{\link{head}}
#' 
#' @examples
#' x <- matrix(rnorm(1000), nrow = 10)
#' uc(x)
#' 
#' @export
uc <- function(x, nr=6, nc=6, ...){
  
  stopifnot(is.numeric(c(nr, nc)))
  
  if (all(!is.matrix(x), !is.data.frame(x))) {
    head(x, nr, ...)
  }
  else{
    x[1:min(nrow(x), nr), 1:min(ncol(x), nc)]
  }
  
}