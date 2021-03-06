#' Update lists with build classes
#' 
#' @keywords internal
#' @noRd
update_classes <- function(content){
  update_ul_classes <- function(content){
    content = gsub('<blockquote>\n*<ul>', '<ul class = "build">', content)
    content = gsub('</ul>\n*</blockquote>', "</ul>", content)
    return(content)
  }
  update_ol_classes <- function(content){
    content = gsub('<blockquote>\n*<ol>', '<ol class = "build">', content)
    content = gsub('</ol>\n*</blockquote>', "</ol>", content)
    return(content)
  }
  content <- content %|% update_ul_classes %|% update_ol_classes
  return(content)
}

#' Update <*> classes by adding class specifier
#'
#' @keywords internal
#' @noRd
# It should convert <p>.build some text </p> to
# <p class = "build"> some text </p>
update_p_classes <- function(content){
  gsub("<p>\\.(.*?) ", "<p class = '\\1'>", content)
}

