\name{crosssection}
\alias{crosssection}
\title{Atmospheric cross section}
\description{
Visualisation of atmospheric cross section.
}
\usage{
crosssection(humi,wind,temperature,plot.temp=TRUE,plot.wind=TRUE,
	colors=c("brown", "yellow","green"),ylab_tics,ylab,
	h_limit,h_step,p_nr)
}
\arguments{
\item{humi}{R dataframe with humidity values for different pressure levels
	and different time steps. Data must be organized in following way:
	in rows time steps, from the first time step in the first line,
	to the last time step in the last line, in columns pressure levels,
	from the highest pressure level in the first column (e.g. 1000 hPa) 
	to the lowest pressure level in the last column (e.g. 100 hPa)}
\item{wind}{R dataframe with wind u and v components for different pressure levels
        and different time steps. Data must be organized in following way:
        in rows time steps, from the first time step in the first line, 
        to the last time step in the last line, in columns pressure levels,
	first all u components of wind, than v components,
        from the highest pressure level in the first column (e.g. 1000 hPa)
        to the lowest pressure level in the last column (e.g. 100 hPa)}
\item{temperature}{R dataframe with temperature values for different pressure levels
        and different time steps. Data must be organized in following way:
        in rows time steps, from the first time step in the first line, 
        to the last time step in the last line, in columns pressure levels, 
        from the highest pressure level in the first column (e.g. 1000 hPa)
        to the lowest pressure level in the last column (e.g. 100 hPa)}
\item{plot.temp}{Logical, if TRUE plot temperature}
\item{plot.wind}{Logical, if TRUE plot wind}
\item{colors}{Colors for humidity contours, must define 3 colors like in:
	colors=c("brown", "yellow","green")}
\item{ylab_tics}{Possition of y ticks, from 0 to 1. 0 - the highest pressure,
	1 - the lowest one.}
\item{ylab}{y label names, for example ylab=c(1000,800,600,400,200,100)}
\item{h_limit}{length of forecast in hours, for example h_limit=54}
\item{h_step}{time step of forecast in hours, for example h_step=3}
\item{p_nr}{number of pressure levels = number of columns in indata}
}
\author{Bogdan Bochenek}
\examples{
data(example_humi)
data(example_wind)
data(example_temperature)
crosssection(humi,wind,temperature,plot.temp=TRUE,plot.wind=TRUE,
	colors=c("brown", "yellow","green"),
	ylab_tics=c(0,0.2,0.4,0.6,0.8,0.9),
	ylab=c(1000,800,600,400,200,100),
	h_limit=54,h_step=3,p_nr=10)
}
\keyword{cross section}
