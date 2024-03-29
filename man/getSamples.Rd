% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllMethods.R
\name{getSamples}
\alias{getSamples}
\alias{getSamples,bayesGAMfit-method}
\alias{getSamples,stanfit-method}
\alias{getSamples,glmModel-method}
\title{Extract the MCMC samples from an object of type \code{bayesGAMfit}}
\usage{
getSamples(object, ...)

\S4method{getSamples}{bayesGAMfit}(object, nsamp = NULL, seednum = NULL, ...)

\S4method{getSamples}{stanfit}(object, nsamp = 1000, seednum = NULL, results = NULL, ...)

\S4method{getSamples}{glmModel}(object, nsamp = NULL, seednum = NULL, results = NULL, ...)
}
\arguments{
\item{object}{model object of class \code{bayesGAMfit}}

\item{...}{Additional parameters passed to \code{corrplot.mixed}}

\item{nsamp}{Optional number of samples to return}

\item{seednum}{Optional integer for seed number when selecting a random sample}

\item{results}{Matrix of HMC posterior samples}
}
\value{
array of the posterior simulation, or subsample of the array
}
\description{
Returns an array of the posterior simulation from \code{Stan}. Optionally, may return a subsample from the full MCMC simulation.
}
\section{}{
NA
}

\examples{
require(stats); require(graphics)
f <- bayesGAM(weight ~ np(height), data = women, family = gaussian, 
              iter = 500, chains = 1)
allres <- getSamples(f)             
}
