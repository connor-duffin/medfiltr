% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medfiltr.R
\name{MedianFilter}
\alias{MedianFilter}
\title{Compute the median filter through zero-padding.}
\usage{
MedianFilter(x, window = 3, na.rm = FALSE)
}
\arguments{
\item{x}{A numeric vector representing the input signal.}

\item{window}{An odd integer specifying the size of the moving window
(default is 3).}

\item{na.rm}{Logical; if \code{TRUE}, missing values are removed before
computing the median.}
}
\value{
A numeric vector of the same length as \code{x}, containing the median-filtered signal.
}
\description{
Compute the median filter through zero-padding.
}
