\name{ARPIEM2012.freq}
\alias{ARPIEM2012.freq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Curva di frequenza delle portate al colmo di piena
}
\description{
Curva di frequenza delle portate di piena ottenuta mediante distribuzione log-Normale a 3 parametri, con il metodo degli L-momenti. La procedura determina anche le fasce di confidenza della curva di frequenza sulla base delle incertezze associate agli L-momenti.}
\usage{
ARPIEM2012.freq(Qind, sdQind, LCV, sdLCV, LCA, sdLCA, Qind.type, LCV_LCA.type,
 n = 10000, Tr = c(20, 50, 100, 200, 500), conf.bands = c(0.1, 0.2, 0.8, 0.9))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Qind}{Piena indice, ovvero la portata media annua al colmo di piena}
  \item{sdQind}{deviazione standard della piena indice}
  \item{LCV}{L-CV della distribuzione}
  \item{sdLCV}{Deviazione standard del L-CV della distribuzione}
  \item{LCA}{L-CA della distribuzione}
  \item{sdLCA}{Deviazione standard del L-CA della distribuzione}
  \item{Qind.type}{Modello con cui è stato determinata la portata indice; può valere "C" se derivata da dati campionari e "R" se da analisi regionale}
  \item{LCV_LCA.type}{Modello con cui sono stati determinati L-CV e L-CV; può valere "C_C" se entrambi derivati da dati campionari, "R_R" se entrambi derivanti da analisi regionale, oppure "C_R"}
  \item{n}{Numero simulazioni Monte Carlo richieste per il calcolo delle fasce di confidenza}
  \item{Tr}{Vettore dei periodi di ritorno in corrispondenza dei quali effettuare il calcolo della curva di frequenza e delle fasce di confidenza}
  \item{conf.bands}{Vettore delle probabilità in corrispondenza delle quale calcolare le fasce di confidenza}
}
\details{
Vedere il manuale d'uso della procedura ARPIEM2012 per dettagli ed esempi
}
\value{
	\item{Freq}{Vettore delle frequenze}
	\item{Tr}{Vettore dei tempi di ritorno \eqn{T=1/(1-F)}{T=1/(1-F)}}
	\item{KTln3}{Curva di crescita basata sulla distribuzione logNormale a 3 parametri}
	\item{qln3}{Curva di frequenza basata sulla distribuzione logNormale a 3 parametri}
	\item{qln3.bands}{Fasce di confidenza}
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Daniele Ganora
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%	Vedere anche \code{\link{ARPIEM2012.Lmom}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
	\dontrun{
require(nsRFA)

ARPIEM2012.freq(Qind, sdQind, LCV, sdLCV, LCA, sdLCA, Qind.type, LCV_LCA.type, 
  n = 10000, Tr = c(20, 50, 100, 200, 500), conf.bands = c(0.1, 0.2, 0.8, 0.9))
	}
	
ARPIEM2012.freq(10, 5, 0.45, 0.12, 0.54, 0.23, "C", "C_C", n = 10000, 
  Tr = c(20, 50, 100, 200, 500), conf.bands = c(0.1, 0.2, 0.8, 0.9))
	
}
