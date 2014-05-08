\name{pBurrXII}
\alias{pBurrXII}
\alias{dBurrXII}
\alias{qBurrXII}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
The Extended Burr type XII distribution
}
\description{
 Density, distribution function and quantile function for the Extended (three-parameter) Burr type XII with scale parameter \code{lambda} and shape parameters \code{k} and \code{c}.
 }
\usage{
	pBurrXII(x, lambda, k, c)
	dBurrXII(x, lambda, k, c)
	qBurrXII(p, lambda, k, c)
}
\arguments{
  \item{x}{vector of quantiles.}
  \item{p}{vector of probabilities.}
  \item{lambda, k, c}{respectively the scale parameter and the two shape parameters.}
}
\details{
The cumulative function of the extended Burr XII distribution reads:
\deqn{P(x) = 1-\left(1-k \left(\frac{x}{\lambda}\right)^c\right)^{1/k} \quad k \neq 0}
\deqn{P(x) = 1 - \exp \left[ -\left(\frac{x}{\lambda}\right)^c\right] \quad k = 0}
where \eqn{x} is the quantile, \eqn{P} is the non-exceedance probability, \eqn{\lambda} is the scale parameter and \eqn{k} and \eqn{c} are the shape parameters.

The range of the distribution is \eqn{0 \le x \le \infty} for \eqn{k \le 0} and \eqn{0 \le x \le \lambda k^{-1/c}} otherwise.

 }
\value{
	\code{dBurrXII} gives the density, \code{pBurrXII} gives the distribution function and \code{qBurrXII} gives the quantile function. The length of the result is determined by the length of \code{x} or \code{p} vectors.
}
\references{
	D. Ganora and F. Laio. Hydrological applications of the Burr distribution: a practical method for parameter estimation. Submitted to \emph{Journal of Hydrologic Engineering} (ASCE).
	
	Z. Hao and V.P. Singh. Entropy-based parameter estimation for extended Burr XII distribution. \emph{Stoch. Environ. Res. Risk. Assess.} (2009) 23:1113-1122
}
\author{
	Daniele Ganora
}
%\note{
%  to be completed
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
	\code{\link{lmomBurrXII}}, \code{\link{parBurrXII.approx}}

}
% \examples{
% ## esempio campionario
% x <- rnorm(30) # random sample
% res <- ARPIEM2012.Lmom.sample(x)
% print(res)

% \dontrun{
% ## esempio regionale
% tab <- read.table("input_descrittori.txt", header=T, sep=";")
% descr <- tab[, "valore"]
% names(descr) <- tab[, "denominazione"]
% res <- ARPIEM2012.Lmom.reg(descr)
% print(res)
%}

%}
