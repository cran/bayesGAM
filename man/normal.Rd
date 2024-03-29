% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClasses.R
\name{normal}
\alias{normal}
\title{Constructor function for Normal priors}
\usage{
normal(param_values)
}
\arguments{
\item{param_values}{Numeric vector of length 2 for the mean and standard deviation parameters}
}
\description{
Used to specify Normal priors for \code{bayesGAM} models
}
\details{
For the \code{beta} and \code{a} parameters, the distribution is assumed to be unconstrained.
For \code{eps} and \code{lambda}, the priors are half-normal with a support of strictly positive numbers.
}
\examples{
require(stats); require(graphics)
normal(c(0, 10))
}
\references{
Stan Development Team. 2018. Stan Modeling Language Users Guide and Reference Manual, Version 2.18.0
}
