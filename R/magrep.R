#' @title Wrappers to grep and gsub functions
#' 
#' @description Wrappers to common grep functions for compatability with the magrittr style of programming
#' 
#' @details
#' These return the same as the functions \code{\link{grep}}, \code{\link{grepl}} and \code{\link{gsub}}, 
#' but have the character placed first for easy integration with the magrittr pipe and lapply functions.
#' 
#' @param x a character vector where matches are sought, or an object which can be coerced by as.character to a character vector
#' @param pattern character string containing a \code{\link{regular expression}} (or character string for fixed = TRUE) 
#' to be matched in the given character vector. 
#' @param replacement	a replacement for matched pattern in sub and gsub. Coerced to character if possible.
#' @param ... additional arguments passed to \code{\link{grep}}, \code{\link{grepl}} and \code{\link{gsub}}
#' 
#' @seealso \code{\link{grep}}, \code{\link{grepl}} and \code{\link{gsub}}
#' 
#' @export
magrep <- function(x, pattern, ...){
  grep(pattern, x, ...)
}

#' @rdname magrep
#' @export
magrepl <- function(x, pattern, ...){
  grepl(pattern, x, ...)
}

#' @rdname magrep
#' @export
magsub <- function(x, pattern, replacement, ...){
  gsub(pattern, replacement, x, ...)
}