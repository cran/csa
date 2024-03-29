% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_fun.R
\name{dt.to.brick}
\alias{dt.to.brick}
\title{Transform data.table to brick}
\usage{
dt.to.brick(dt, var_name)
}
\arguments{
\item{dt}{The data table object to be transformed. It must be in a four-column format, with the coordinate columns named as "lat" & "lon"
and time values as "time".}

\item{var_name}{The name (chr) of the column in the data table (\code{dt}) which holds the values of the variable, e.g., "temperature".}
}
\value{
\code{dt} as a brick object.
}
\description{
The function \code{dt.to.brick} transforms a data.table object to brick (raster) format
}
\examples{
\dontrun{
aa <- expand.grid(lat = seq(40, 50, 1),
                 lon = seq(20, 30, 1),
                 time = seq(1900, 2000, 1))
aa$anomaly = rnorm(nrow(aa))
aa <- brick(dt.to.brick(aa, "anomaly"))
}
}
