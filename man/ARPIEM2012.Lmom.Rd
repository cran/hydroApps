\name{ARPIEM2012.Lmom}
\alias{ARPIEM2012.Lmom.sample}
\alias{ARPIEM2012.Lmom.reg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calcolo degli L-momenti
}
\description{
 Funzioni per il calcolo degli L-momenti della curva di frequenza dei colmi di piena su base campionaria o regionale
 }
\usage{ARPIEM2012.Lmom.sample(x)
ARPIEM2012.Lmom.reg(descr)}
\arguments{
  \item{x}{ vettore contenente il campione delle misure sistematiche di portata al colmo}
  \item{descr}{ vettore di descrittori necessari per l'analisi regionale}
}
\details{
 Per i descrittori da utilizzare consultare il manuale ARPIEM2012
 }
\value{
	\item{y}{ tabella contenente gli L-momenti (Piena indice, L-CV e L-CA), le rispettive deviazioni standard e una nota che indica se il valore deriva da base campionaria (C) o regionale (R)}
}
%\references{
%	Laio et al. (2010)
%}
\author{
	Daniele Ganora
}
%\note{
%  to be completed
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%	\code{\link{nsRFA}}
%}
\examples{
## esempio campionario
require(nsRFA)

x <- rnorm(30) # random sample
res <- ARPIEM2012.Lmom.sample(x)
print(res)

\dontrun{
## esempio regionale
tab <- read.table("input_descrittori.txt", header=T, sep=";")
descr <- tab[, "valore"]
names(descr) <- tab[, "denominazione"]
res <- ARPIEM2012.Lmom.reg(descr)
print(res)
}

}
