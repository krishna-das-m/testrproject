#' @title Data for signed Erdos Renyi network
#'
#' @description
#'  The data set contains the triad numbers and Energy of the signed network for
#'  the given N, p and q values
#'
#' @docType data
#' @usage data (ernetwork)
#' @format A data frame with 4 rows and 5 variables.
#'  \describe{
#'    \item{N}{numerical - The size of the network}
#'    \item{p}{numerical - probability of connection}
#'    \item{q}{numerical - Probability to create a positive edge}
#'    \item{triad_num}{numerical - The number of triads}
#'    \item{E}{numerical - The energy of the signed network}
#'  }
#' @keywords datasets ernetwork
#' @examples
#'  plot(ernetwork$N, ernetwork$triad_num)
"ernetwork"
