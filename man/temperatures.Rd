\name{temperatures}
\alias{temperatures}
\title{Temperature meteogram}
\description{
Visualisation of temperatures.
}
\usage{
temperatures(temperature.data,plot.dewt=TRUE,plot.surf=TRUE,
	plot.min_max=TRUE)
}
\arguments{
\item{temperature.data}{R dataframe with 6 columns: time in hours,
	temperature at 2 meters, minimal temperature at 2 meters,
	maximal temperature at 2 meters, surface temperature,
	dew point temperature. temperature.data should have at least
	Temperature and time columns. Dataframe should have nomes as
	follow: time, Temperature, minT, maxT, Tdew, surf.temp}
\item{plot.dewt}{Logical, if TRUE plot dew point temperature}
\item{plot.surf}{Logical, if TRUE plot surface temperature}
\item{plot.min_max}{Logical, if TRUE plot min and max temperatures}
}
\author{Bogdan Bochenek}
\examples{
data(example_temperature.data)
temperatures(temperature.data,plot.dewt=TRUE,plot.surf=TRUE,
	plot.min_max=TRUE)
}
\keyword{temperatures}
