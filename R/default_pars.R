#' Default parameter values
#'
#' Return default values of the simulation parameters, i.e. the default settings
#' used in Pontarp et al. (2012).
#'
#' @author Theo Pannetier
#' @name default_pars
NULL

#' @export
#' @rdname default_pars
default_comp_width <- function() {
  0.2
}

#' @export
#' @rdname default_pars
default_trait_opt <- function() {
  0
}

#' @export
#' @rdname default_pars
default_carr_cap_opt <- function() {
  1000
}

#' @export
#' @rdname default_pars
default_carr_cap_width <- function() {
  0.5
}

#' @export
#' @rdname default_pars
default_growth_rate <- function() {
  1
}

#' @export
#' @rdname default_pars
default_prob_mutation <- function() {
  1
}

#' @export
#' @rdname default_pars
default_mutation_sd <- function() {
  0.001
}

#' @export
#' @rdname default_pars
default_init_comm <- function() {
  tibble::tibble(
    "z" = rep(0, 10), # ten individuals with optimal trait value (0)
    "species" = "#89ae8a",
    "ancestral_species" = as.character(NA)
    )
}

#' @export
#' @rdname default_pars
default_seed <- function() {
  date_string <- Sys.time()
  seed <- as.numeric(
    paste0(
      substring(date_string, 9, 10), # Day of the month
      substring(date_string, 12, 13), # hour
      substring(date_string, 15, 16), # minutes
      substring(date_string, 18, 19) # seconds
    )
  )
  seed
}

#' @export
#' @rdname default_pars
default_sampling_prop <- function() {
  0.5
}

#' @export
#' @rdname default_pars
default_trait_gap <- function() {
  0.1
}
