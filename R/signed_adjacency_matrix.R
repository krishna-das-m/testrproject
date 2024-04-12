#' Generate a signed adjacency matrix
#'
#' @param q probability to form positive edge.
#' @param N Number of nodes
#' @param p connection probability for Erdos Renyi graph. The default value is 1
#' @returns A list of signed adjacency matrices and the corresponding graph
#'          object
#' @examples
#' signed_adjacency_matrix(N=10, p=1)
#' signed_adjacency_matrix(N=50, p=0.8, q=0.5)
#' @export
signed_adjacency_matrix <- function(N, p, q=1) {
  stopifnot (is.numeric(N),
             length(N)==1,
             N>=0,
             p>=0, p<=1)
  g <- erdos.renyi.game(N,p)
  A <- as.matrix(as_adjacency_matrix(g))
  # Function to generate signs for a given 'q'
  generate_signs <- function(q) {
    signs <- sign(q - matrix(runif(N^2), nrow=N))
    signs[lower.tri(signs)] <- 0
    signs_symmetric <- signs + t(signs)
    diag(signs_symmetric) <- 0
    return(signs_symmetric)
  }
  adj <- A* generate_signs(q)
  G <- graph_from_adjacency_matrix(adj, mode = "undirected", weighted = TRUE,  diag = FALSE)
  result <- (list(adj = adj, G = G))
  class (result) <- "signed_adjacency_matrix"
  attr(result, "q") <- q
  return(result)

}
