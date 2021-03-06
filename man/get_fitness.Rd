% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_fitness.R
\name{get_fitness}
\alias{get_fitness}
\title{Compute fitness values}
\usage{
get_fitness(
  traits_comm,
  growth_rate = default_growth_rate(),
  comp_width = default_comp_width(),
  trait_opt = default_trait_opt(),
  carr_cap_opt = default_carr_cap_opt(),
  carr_cap_width = default_carr_cap_width(),
  fitness_func = fitness_func_ricker
)
}
\arguments{
\item{traits_comm}{numeric vector of variable length, the trait values of
every individual in the community.}

\item{growth_rate}{numeric \verb{>= 0}, the baseline growth rate. Generations
being discrete, high values will cause chaos.}

\item{comp_width}{numeric \verb{>= 0}. Width of the competition kernel.}

\item{trait_opt}{numeric. The optimal trait value.
\code{get_carr_cap(trait_opt) = carr_cap_opt}.}

\item{carr_cap_opt}{numeric. Carrying capacity at the optimal trait value.}

\item{carr_cap_width}{numeric \verb{>= 0}.
Width of the carrying capacity kernel.}

\item{fitness_func}{the name of the function used to compute fitness.}
}
\description{
Fitness values are computed for each individual from their trait value,
the fitness landscape defined by the carrying capacity parameters, and the
trait values of all other individuals in the community.
}
\author{
Theo Pannetier
}
