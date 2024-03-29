% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllMethods.R
\name{posterior_predict}
\alias{posterior_predict}
\alias{posterior_predict,bayesGAMfit-method}
\alias{posterior_predict,glmModel-method}
\title{Posterior predictive samples from models fit by \code{bayesGAM}}
\usage{
posterior_predict(object, ...)

\S4method{posterior_predict}{bayesGAMfit}(object, draws = NULL, ...)

\S4method{posterior_predict}{glmModel}(object, draws = NULL, results = NULL, ...)
}
\arguments{
\item{object}{Object of type \code{bayesGAMfit} generated from \code{bayesGAM}.}

\item{...}{Additional arguments for \code{postrior_predict}}

\item{draws}{An integer indicating the number of draws to return. The default and maximum number of draws is the size of the posterior sample.}

\item{results}{Matrix of HMC posterior samples}
}
\value{
a list of \emph{D} by \emph{N} matrices, where \emph{D} is the number of draws from the posterior predictive distribution and \emph{N} is the number of data points being predicted per draw.
}
\description{
Draw from the posterior predictive distribution
}
\examples{
f <- bayesGAM(weight ~ np(height), data = women, 
              family = gaussian, iter=1000, chains = 1)
res <- posterior_predict(f, draws=100)
}
\references{
Goodrich B, Gabry J, Ali I & Brilleman S. (2020). rstanarm: Bayesian applied regression modeling via Stan. R package version 2.19.3 https://mc-stan.org/rstanarm.

Jonah Gabry, Ben Goodrich and Martin Lysy (2020). rstantools: Tools for Developing R Packages Interfacing with 'Stan'. https://mc-stan.org/rstantools/, https://discourse.mc-stan.org/.
}
