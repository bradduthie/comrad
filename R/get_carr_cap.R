#' Get the carrying capacity for a given trait value
#'
#' Computes the carrying capacity experienced by an individual.
#'
#' @inheritParams default_params_doc
#'
#' @details the carrying capacity controls the static component of the fitness,
#' one that depends only on an individual's trait and not on the
#' presence/absence of competitors. It defines the fitness landscape before any
#' competitive effect.
#'
#' @author Theo Pannetier
#' @export

get_carr_cap <- function(
  trait_ind,
  trait_opt = default_trait_opt(),
  carr_cap_opt = default_carr_cap_opt(),
  carr_cap_width = default_carr_cap_width()
  ) {
  comrad::testarg_num(trait_ind)
  comrad::testarg_num(trait_opt)
  comrad::testarg_num(carr_cap_opt)
  comrad::testarg_pos(carr_cap_opt) # is a nb of ind
  comrad::testarg_num(carr_cap_width)
  comrad::testarg_pos(carr_cap_width) # is a variance

  trait_dist <- (trait_opt - trait_ind) ^ 2
  if (trait_opt == Inf) {
    trait_dist[which(trait_ind == Inf)] <- 0 # replace NaNs with 0
  }

  carr_cap <- carr_cap_opt * exp(- (trait_dist / (2 * carr_cap_width ^ 2)))

  # Solve possible NaN issues --------------------------------------------------
  # NaNs can arise if both terms in the division are equal to 0 or Inf
  if (carr_cap_width == 0) { # I rule that carr_cap_width has precedence
    nans <- which(trait_dist == 0)
    carr_cap[nans] <- carr_cap_opt # as if trait_dist / carr_cap_width = 0
  } else if (carr_cap_width == Inf) {# I rule that carr_cap_width has precedence
    nans <- which(trait_dist == Inf)
    carr_cap[nans] <- carr_cap_opt # as if trait_dist / carr_cap_width = 0
  }
  # NaNs can also arise if carr_cap_opt is set to Inf and the exp term is 0
  if (carr_cap_opt == Inf) { # I rule that carr_cap_opt has precedence
    nans <- which(exp(- (trait_dist / (2 * carr_cap_width ^ 2))) == 0)
    carr_cap[nans] <- carr_cap_opt
  }

  comrad::testarg_num(carr_cap) # catch NAs, NaNs and NULL
  comrad::testarg_pos(carr_cap)
  comrad::testarg_length(carr_cap, length(trait_ind))

  carr_cap
}
