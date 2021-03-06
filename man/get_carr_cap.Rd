% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_carr_cap.R
\name{get_carr_cap}
\alias{get_carr_cap}
\title{Get the carrying capacity for a given trait value}
\usage{
get_carr_cap(
  trait_ind,
  trait_opt = default_trait_opt(),
  carr_cap_opt = default_carr_cap_opt(),
  carr_cap_width = default_carr_cap_width()
)
}
\arguments{
\item{trait_ind}{numeric. Trait value \code{z} of a focal individual.}

\item{trait_opt}{numeric. The optimal trait value.
\code{get_carr_cap(trait_opt) = carr_cap_opt}.}

\item{carr_cap_opt}{numeric. Carrying capacity at the optimal trait value.}

\item{carr_cap_width}{numeric \verb{>= 0}.
Width of the carrying capacity kernel.}
}
\description{
Computes the carrying capacity experienced by an individual.
}
\details{
the carrying capacity controls the static component of the fitness,
one that depends only on an individual's trait and not on the
presence/absence of competitors. It defines the fitness landscape before any
competitive effect.
}
\author{
Theo Pannetier
}
