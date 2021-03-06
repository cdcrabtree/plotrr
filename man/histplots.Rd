% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/histplots.r
\name{histplots}
\alias{histplots}
\title{Creates histograms for a measure for each group/unit}
\usage{
histplots(x, y, group, data, n)
}
\arguments{
\item{x}{A vector.}

\item{y}{A vector.}

\item{group}{A vector that contains unit/group identifiers.}

\item{data}{A data frame.}

\item{n}{The number of bins.}
}
\value{
Historgrams for a measure for each group/unit.
}
\description{
Returns histograms for a measure for each group/unit.
}
\examples{
a <- runif(1000, min = 0, max = 1)
b <- a + rnorm(1000, mean = 0, sd = 1)
c <- rep(c(1:10), times = 100)
data <- data.frame(a, b, c)
histplots("a", "b", "c", data, 5)
}
\author{
Charles Crabtree \email{ccrabtr@umich.edu}
}
