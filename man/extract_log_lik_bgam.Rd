% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllMethods.R
\name{extract_log_lik_bgam}
\alias{extract_log_lik_bgam}
\alias{extract_log_lik_bgam,bayesGAMfit-method}
\title{Extract the log likelihood from models fit by \code{bayesGAM}}
\usage{
extract_log_lik_bgam(object, ...)

\S4method{extract_log_lik_bgam}{bayesGAMfit}(object, ...)
}
\arguments{
\item{object}{Object of type \code{bayesGAMfit} generated from \code{bayesGAM}.}

\item{...}{Additional parameters to pass to \code{loo::extract_log_lik}}
}
\value{
A matrix with the extracted log likelihood values post-warmup
}
\description{
Convenience function for extracting the pointwise log-likelihood matrix
or array from a model fit by \code{bayesGAM}. Calls the \code{extract_log_lik} method
from the \code{loo} package
}
\examples{
f <- bayesGAM(weight ~ np(height), data = women,
              family = gaussian, iter=500, chains = 1)
ll <- extract_log_lik_bgam(f)
}
\references{
Stan Development Team (2017). The Stan C++ Library, Version 2.16.0. https://mc-stan.org/

Stan Development Team (2017). RStan: the R interface to Stan, Version 2.16.1. https://mc-stan.org/

Vehtari A, Gabry J, Magnusson M, Yao Y, Gelman A (2019). “loo: Efficient leave-one-out cross-validation and WAIC for Bayesian models.” R package version 2.2.0, <URL: https://mc-stan.org/loo>.

Vehtari A, Gelman A, Gabry J (2017). “Practical Bayesian model evaluation using leave-one-out cross-validation and WAIC.” \emph{Statistics and Computing}, \emph{27}, 1413-1432. doi:10.1007/s11222-016-9696-4 (URL: https://doi.org/10.1007/s11222-016-9696-4).
}
