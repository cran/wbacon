\name{quantile_w}
\alias{quantile_w}
\title{Weighted Sample Quantiles}
\usage{
quantile_w(x, w, probs, na.rm = FALSE)
}
\arguments{
\item{x}{\code{[numeric vector]} observations.}
\item{w}{\code{[numeric vector]} weights (same length as vector \code{x}).}
\item{probs}{\code{[numeric vector]} vector of probabilities with values
	in \code{[0,1]}.}
\item{na.rm}{\code{[logical]} indicating whether \code{NA} values should be
	removed before the computation proceeds (default: \code{FALSE}).}
}
\value{
Weighted estimate of the population quantiles.
}
\description{
\code{quantile_w} computes the weighted population quantiles.
}
\details{
\describe{
	\item{Overview.}{\code{quantile_w} computes the weighted sample
		quantiles; argument \code{probs} allows vector inputs.}
    \item{Implementation.}{The function is based on a weighted version of
		the quickselect algorithm with the Bentley and McIlroy (1993) 3-way
		partitioning scheme. For very small arrays, we use insertion sort.}
   \item{Compatibility.}{For equal weighting, i.e. when all elements in
		\code{w} are equal, \code{quantile_w} computes quantiles that
		are identical with \code{type = 2} in \code{stats::quantile}; see
		also Hyndman and Fan (1996).}
}
}
\references{
Bentley, J.L. and D.M. McIlroy (1993).
    Engineering a Sort Function,
    \emph{Software - Practice and Experience} \bold{23}, 1249--1265.
    \doi{10.1002/spe.4380231105}

Hyndman, R.J. and Y. Fan (1996).
    Sample Quantiles in Statistical Packages,
    \emph{The American Statistician} \bold{50}, 361--365.\doi{10.2307/2684934}
}
\seealso{
\code{\link{median_w}}
}
