% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ernetwork.R
\docType{data}
\name{ernetwork}
\alias{ernetwork}
\title{Data for signed Erdos Renyi network}
\format{
A data frame with 4 rows and 5 variables.
 \describe{
   \item{N}{numerical - The size of the network}
   \item{p}{numerical - probability of connection}
   \item{q}{numerical - Probability to create a positive edge}
   \item{triad_num}{numerical - The number of triads}
   \item{E}{numerical - The energy of the signed network}
 }
}
\usage{
data (ernetwork)
}
\description{
The data set contains the triad numbers and Energy of the signed network for
 the given N, p and q values
}
\examples{
 plot(ernetwork$N, ernetwork$triad_num)
}
\keyword{datasets}
\keyword{ernetwork}
