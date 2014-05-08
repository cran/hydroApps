\name{hydroApps-package}
\alias{hydroApps-package}
\alias{hydroApps}
\docType{package}
\title{Tools and models for hydrological applications}
\description{
Some general tools to support hydrological analyses are provided. The package also implements a regional model for the Flood Frequency Analysis in Northwester Italy based on the Spatially Smooth Estimation Method (SSEM).}
\details{
\tabular{ll}{
Package: \tab hydroApps\cr
Type: \tab Package\cr
Version: \tab 0.1-1\cr
Date: \tab 2014-05-15\cr
License: \tab GPL (>=2)\cr
}
The \code{hydroApps} package provides functions to use the Extended Burr XII distribution, particularly useful to model flow duration curves, but of general interest. The parameter estimation is performed with the method of L-moments using a set of approximated equations (\emph{Ganora and Laio, 2014}).
The package provides also an implementation of the SSEM (Spatially Smooth Estimation Method) for Regional Flood Frequency Analysis in the Piemonte region (Northwestern Italy). The model is based on the approach by \emph{Laio et al.} (2011) calibrated using the most up-to-date database of annual maxima provided in \emph{Barbero et al.} (2012) for the case study area. 
}
\author{
Daniele Ganora
Maintainer: Daniele Ganora <daniele.ganora@polito.it>
}
\note{Some documentation relative to the regional model is in Italian.}

\references{
S.Barbero, M.Graziadei, M.Zaccagnino, A.Saladin, P.Claps, D.Ganora,
  F.Laio, and R.Radice. \emph{Catalogo delle portate massime annuali al colmo del bacino
  occidentale del Po}. ISBN 978-88-7479-112-5. Arpa Piemonte, 2012.
  \url{http://www.arpa.piemonte.it/pubblicazioni-2/pubblicazioni-anno-2012/catalogoflorabassa.pdf}

D. Ganora and F. Laio. Hydrological applications of the Burr distribution: a practical method for parameter estimation. Submitted to \emph{Journal of Hydrologic Engineering} (ASCE).
  
F.Laio, D.Ganora, P.Claps, and G.Galeati. Spatially smooth regional estimation of the flood frequency curve
  (with uncertainty). \emph{Journal of Hydrology}, 408: 67--77, 2011.
 doi10.1016/j.jhydrol.2011.07.022.
 
}
\keyword{ package }
%\seealso{
% Other useful hydrological tools in the \code{\link{nsRFA}} package.
%}