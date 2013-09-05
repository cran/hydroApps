\name{ARPIEM2012.sim.Lmoments}
\alias{ARPIEM2012.sim.Lmoments}
\title{
Generazione MonteCarlo degli L-momenti 
}
\description{
Generazione di una serie di triplette Qind, LCV e LCA per l'analisi dell'incertezza delle stime.
Funzione che viene utilizzata all'interno di \code{\link{ARPIEM2012.freq}}
}
\usage{
ARPIEM2012.sim.Lmoments(Qind.type, LCV_LCA.type, Qind, sdQind, LCV, sdLCV, LCA, sdLCA, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Qind.type}{
  	"C" o "R" a seconda se derivata da L-momenti campionari o regionali
}
  \item{LCV_LCA.type}{
  	"C_C", "R_R" o "C_R" a seconda del metodo con cui sono stati derivati L-CV e L-CA
}
  \item{Qind}{
  	valure numerico della piena indice
}
  \item{sdQind}{
  	valure numerico della deviazione standard della piena indice
}
  \item{LCV}{
  	valure numerico di L-CV
}
  \item{sdLCV}{
  	valure numerico della deviazione standard di L-CV
}
  \item{LCA}{
  	valure numerico di L-CA
}
  \item{sdLCA}{
  	valure numerico della deviazione standard di L-CA
}
  \item{n}{numero di simulazioni MonteCarlo
}
}
\details{
  	Per dettagli sulle distibuzioni da cui vengono campionati gli L-momenti consultare \emph{Laio et al.} (2011)
}
\value{
	  	restituisce un data.frame contenete le triplette di L-momenti simulati
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
 F.Laio, D.Ganora, P.Claps, e G.Galeati. Spatially smooth regional estimation of the flood frequency curve
  (with uncertainty). \emph{Journal of Hydrology}, 408: 67--77, 2011.
 doi10.1016/j.jhydrol.2011.07.022.
%% ~put references to the literature/web site here ~
}
\author{
	Daniele Ganora
%%  ~~who you are~~
}
%\note{
%	  	to be completed
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%	  	to be completed
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
	\dontrun{
	ARPIEM2012.sim.Lmoments(Qind.type="C", LCV_LCA.type="C_C", Qind=10, sdQind=2,
	   LCV=0.25, sdLCV=0.08, LCA=0.4, sdLCA=0.21, n=1000)
	}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

