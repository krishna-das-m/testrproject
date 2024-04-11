#' @title Calculates the number of triad
#' @description
#' Calculates the number of triads for the given graph object
#'
#' @param G igraph object
#' @returns list containing number of triads for the given igraph object
#'
#' @examples
#' triad_num <- calc_num_triads(signed_adjacency_matrix(1,50,0.5)$G)
#' triad_num02 <- calc_num_triads(G)
#' @export

calc_num_triads <- function(G){
  stopifnot (
    length(G) >=1
  )
  triad_num <- sum(count_triangles(G))/3
  # class(triad_num) <- "triad"
  # attr(triad_num, "graphs") <- G
  return(triad_num)
}
