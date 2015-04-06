#' Intersect BED
#'
#' This function performs an intersection between two GRanges objects
#' and returns the results in a data.frame
#' 
#' @param a First GRanges object
#' @param b Second GRanges object
#' @keywords BED GRanges
#' @export
#' @examples
#' intersect_bed(a, b)

intersect_bed <- function(a, b){
  library(GenomicRanges)
  my_hit <- findOverlaps(a, b)
  my_df  <- cbind(as.data.frame(a[queryHits(my_hit)]),
                  as.data.frame(b[subjectHits(my_hit)]))
}
