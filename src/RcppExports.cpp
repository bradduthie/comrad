// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// draw_nb_offspring_cpp
std::vector<int> draw_nb_offspring_cpp(std::vector<float> fitness, int seed);
RcppExport SEXP _comrad_draw_nb_offspring_cpp(SEXP fitnessSEXP, SEXP seedSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< std::vector<float> >::type fitness(fitnessSEXP);
    Rcpp::traits::input_parameter< int >::type seed(seedSEXP);
    rcpp_result_gen = Rcpp::wrap(draw_nb_offspring_cpp(fitness, seed));
    return rcpp_result_gen;
END_RCPP
}
// get_n_eff_cpp
std::vector<float> get_n_eff_cpp(const std::vector<float>& z, float comp_width);
RcppExport SEXP _comrad_get_n_eff_cpp(SEXP zSEXP, SEXP comp_widthSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const std::vector<float>& >::type z(zSEXP);
    Rcpp::traits::input_parameter< float >::type comp_width(comp_widthSEXP);
    rcpp_result_gen = Rcpp::wrap(get_n_eff_cpp(z, comp_width));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_comrad_draw_nb_offspring_cpp", (DL_FUNC) &_comrad_draw_nb_offspring_cpp, 2},
    {"_comrad_get_n_eff_cpp", (DL_FUNC) &_comrad_get_n_eff_cpp, 2},
    {NULL, NULL, 0}
};

RcppExport void R_init_comrad(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
