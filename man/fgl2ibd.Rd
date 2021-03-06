% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score_ibd.R
\name{fgl2ibd}
\alias{fgl2ibd}
\title{Score IBD state.}
\usage{
fgl2ibd(fgl1p, fgl1m, fgl2p, fgl2m)
}
\arguments{
\item{fgl1p, fgl1m, fgl2p, fgl2m}{positive integer, represents founder genome label.}
}
\value{
A value between 1 and 15 representing index of IBD state in lexicographical order.
}
\description{
\code{fgl2ibd} determines pairwise IBD state given the four founder genome labels of two individuals at a marker.
}
\details{
IBD states take value from 1 to 15, which represent the indices of the underlying IBD states from 1111 to 1234 in lexicographical order. E.g., output 1 means IBD state 1111, output 2 means IBD state 1112 etc. Recoding in, e.g., Jacquard order, can be obtained using \code{\link{recode.ibd}}.
}
\examples{
fgl2ibd(1, 1, 1, 1)
fgl2ibd(1, 2, 1, 2)
fgl2ibd(3, 4, 5, 6)
fgl2ibd(4, 5, 4, 4)
}
