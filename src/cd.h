#ifndef _cda_CD_H
#define _cda_CD_H

#include <RcppArmadillo.h>

arma::colvec averaging(const arma::mat& R, const arma::cx_mat& A, const double kn, const arma::mat& Quad);
arma::mat circular_dichroism_spectrum(const arma::colvec kn, const arma::cx_mat& Beta, const arma::mat& R, \
				      const arma::mat& Euler, const arma::mat& QuadPhi, const arma::mat& QuadPsi, \
				      const int full, const int progress);

#endif
