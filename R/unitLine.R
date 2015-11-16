#' @title Add the unit line to a plot
#' 
#' @description Adds the unit line to plot
#' 
#' @param ... used to pass any parameters to \code{\link{abline}}
#' 
#' @details This is a convenience wrapper to the function \code{\link{abline}} from the default graphics package
#' 
#' @examples
#' set.seed(31)
#' x <- rnorm(10)
#' y <- rnorm(10)
#' plot(x,y)
#' unitLine()
#' 
#' @export
unitLine <- function(col = "blue", ...){
  
  abline(a = 0, b = 1, col=col, ...)
  
}