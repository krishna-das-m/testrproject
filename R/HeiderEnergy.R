#' @title Calculate the Heider energy
#' @param Adj Signed adjacency matrix
#' @param triad_num number of triads for the graph object of the signed
#'        adjacency matrix
#' @param J Heider interaction strength. The default value is 1
#' @returns Heider energy for the given signed adjacency matrix
#' @examples
#' E <- HeiderEnergy(Adj,triad_num)
#' @export
HeiderEnergy <- function(Adj,triad_num, J=1) {

  E <- Adj %*% Adj * Adj
  Energy <- -J * sum(E) / 6
  Energy <- Energy/triad_num

  return(Energy)
}
