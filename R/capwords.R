#' @title Capitalise the first letter of every word
#' 
#' @description Capitalise the first letter of every word
#' 
#' @param s a character vector
#' @param strict logical enforces the lower case for all letters not beginning a word
#' @param any character separating the words in the input \code{s}
#' @param collapse the character to separate the strings in the output
#' 
#' @return a character vector
#' 
#' @details Taken from the examples on the page \code{\link{toupper}} and modified slightly.
#'
#' @seealso \code{\link{toupper}} \code{\link{substring}}
#'   
#' @examples
#' s <- c("a cat", "the_dog", "my bIRd")
#' capwords(s)
#' capwords(s, collapse = "_")
#' capwords(s, strict = FALSE)
#' capwords(s, sep="_", collapse=":")
#' 
#' @export
capwords <- function(s, strict = TRUE, sep = " ", collapse = " ") {
  s <- gsub(sep, " ", s)
  cap <- function(s) paste(toupper(substring(s, 1, 1)),
                           {s <- substring(s, 2); if(strict) tolower(s) else s},
                           sep = "", collapse = collapse )
  sapply(strsplit(s, split = " "), cap, USE.NAMES = !is.null(names(s)))
}