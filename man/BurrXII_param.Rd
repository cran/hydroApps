\name{parBurrXII.approx}
\alias{parBurrXII.approx}
\alias{tau3BurrXII.WeibullBound}
\alias{tau3BurrXII.ParetoBound}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Parameters of the Extended Burr type XII distribution
}
\description{
Compute the parameters of the Extended Burr XII given the L-moments with some approximated functions.}
\usage{
	parBurrXII.approx(L1, tau, tau3)
	tau3BurrXII.WeibullBound(tau)
	tau3BurrXII.ParetoBound(tau)
}
\arguments{
  \item{L1}{the mean of the distribution.}
  \item{tau}{the L-CV of the distribution.}
  \item{tau3}{the L-skewness of the distribution.}
}
\details{
	\code{parBurrXII.approx} computes the shape parameters using the approximated equations in \emph{Ganora and Laio} (2014). Note that the approximated equations are valid only for \eqn{k \le 0} (distribution without upper bound). Please refer to \emph{Ganora and Laio} (2014) for details about the equations.	

\code{tau3BurrXII.WeibullBound} and \code{tau3BurrXII.ParetoBound} are mostly used as internal functions, but can be useful for static plots and data interpretation. They represents the upper and lower bound of the distribution domain over the \eqn{\tau}-\eqn{tau_3} space.
 }
\value{
	\code{parBurrXII.approx} provides a vector of three elements which are the parameters of the distribution.
	\code{tau3BurrXII.WeibullBound} provide the minimum value of \eqn{\tau_3} compatible with \code{tau} (corresponding to the lower bound in the \eqn{\tau}-\eqn{\tau_3} space, i.e. when \eqn{k=0}).
	\code{tau3BurrXII.paretoBound} provide the maximum value of \eqn{tau_3} compatible with \code{tau} (corresponding to the upper bound in the \eqn{\tau}-\eqn{\tau_3} space, i.e. when \eqn{k} tends to \eqn{\infty}) 
 
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
	\code{\link{pBurrXII}}, \code{\link{dBurrXII}}, \code{\link{qBurrXII}}, \code{\link{lmomBurrXII}} 
}

 \examples{
## compute parameters from L-moments
parburr <- parBurrXII.approx(L1=2, tau=0.45, tau3=0.51)
parburr 

\dontrun{
## plot the validity domain in the tau-tau3 space
tau = seq(0, 1, by=0.02)
plot(tau, tau3BurrXII.WeibullBound(tau), type="l", lwd=2, ylim=c(-.2, 1))
lines(tau, tau3BurrXII.ParetoBound(tau), lwd=2)
}

}
