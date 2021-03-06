% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_pi_rho_nonnull_qge.R
\name{map_pi_rho_nonnull_qge}
\alias{map_pi_rho_nonnull_qge}
\title{Estimate pi and mixture proportions under a specified model}
\usage{
map_pi_rho_nonnull_qge(X, mix_grid, sigma_g, qalpha, qbeta,
  q_start = qbeta(0.5, qalpha, qbeta), gamma_start = 0,
  eta_start = 0, rho_start = 0, tol = 1e-05, n.iter = 20,
  null_wt = 10, z_prior_func = function(z) {     dnorm(z, 0, 0.5, log =
  TRUE) }, q_prior_func = function(q) {     dbeta(q, qalpha, qbeta, log =
  TRUE) }, gammaeta_prior_func = function(g) {     dnorm(g, 0, sigma_g,
  log = TRUE) }, optmethod = c("mixSQP", "mixIP"))
}
\arguments{
\item{X}{An object of class cause_data containing data for the two traits.}

\item{mix_grid}{An object of class cause_grid containing variance pair candidates}

\item{rho_start}{Starting value for rho}

\item{null_wt}{Specifies the prior weight on the first entry of grid}

\item{z_prior_func}{Prior function for z = arctanh(rho)}
}
\description{
Estimare the MAP for rho and the mixing proportions using
coordinate descent. Causal effect (gamma) and the effect of U (eta) are fixed at zero.
}
