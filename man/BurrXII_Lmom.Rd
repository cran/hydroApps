\name{lmomBurrXII}
\alias{lmomBurrXII}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
L-moments of the Extended Burr type XII distribution
}
\description{
Compute the L-moments of the Extended Burr XII given the parameters.}
\usage{
	lmomBurrXII(lambda, k, c)
}
\arguments{
  \item{lambda}{the scale parameter.}
  \item{k, c}{the two shape parameters.}
}
\details{
Refer to \emph{Ganora and Laio} (2014) and \emph{Hao and Singh} (2009) for details about calculating L-moments from parameters.
}
 
\value{
	\code{lmomBurrXII} output is a vector of three elements containing the mean (\code{L1}), the coefficient L-CV (\code{tau}) and the coefficient L-skewness (\code{tau3}) of the distribution.
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
	\code{\link{pBurrXII}}, \code{\link{dBurrXII}}, \code{\link{qBurrXII}}, \code{\link{parBurrXII.approx}}
}
 \examples{
## compute L-moments from parameters
lmom <- lmomBurrXII(lambda=2, k=-5, c=7) 
lmom 

% \dontrun{
%}

}
