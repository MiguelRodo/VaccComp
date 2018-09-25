#' Check dataframe for NA
#'
#' Returns TRUE if a data frame is NA
#'
#' @param x dataframe
#'
#' @return logical. If TRUE, then the dataframe contains an NA.
#' @import stringr

#' @export
cwNA = function(x) x %>% ungroup() %>% dplyr::summarise_all( function(y) any( Vectorize(is.na)( y) ) )  %>% plyr::laply( function( z ) z ) %>% any()
