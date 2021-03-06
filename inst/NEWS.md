# cda 2.0.0 (06/2016)

DOCUMENTATION

* demos revamped

INTERNAL CHANGES

* rewritten core functions, simplified interface

* the theory is now more accurately described and properly implemented

USER-LEVEL CHANGES

* clusters are now defined with column-major conventions

* new clusters and functions for dye layers (but no core yet)

# cda 1.5.1

INTERNAL CHANGES

* use symmetry to calculate only half of the off-diagonal interaction matrix blocks

* tweak LinkingTo Rcpp for CRAN

# cda 1.5

INTERNAL CHANGES

* complete rewrite of the internal functions to clean up and optimise the passing of parameters

* cross-sections are now calculated for multiple incident angles at once

* corrected a missing factor of 1/sqrt2 in dispersion calculation with circular polarisation

* Rcpp::function tweaks to please c++11 and clang for CRAN release

* more complete internal tests based on testthat (see inst/tests)

* (non-exported) standalone R version of the core CDA functions for testing and debugging

USER VISIBLE CHANGES:

* dispersion_spectrum now calculates extinction, absorption and scattering

* the linear system is now always solved with a (multiple) right-hand side (incident fields), the option to invert the matrix has been removed. It was slower in most cases anyway

* linear_extinction_spectrum no longer exists. Use the more versatile dispersion_spectrum instead

* demos updated to reflect the internal changes

# cda 1.4

USER VISIBLE CHANGES:

* QMC angular averaging gains an 'iterative' routine, adding new integration points until specified accuracy is reached

* a 'cheap' (fast) version of angular averaging is added, only using 3 angles but providing in most cases a good estimate of full averaging

BUG FIX:

* Armadillo 0.190 brought some changes that made the results incorrect at the C++ level. First, the diagonal part of the interaction matrix was filling the off-diagonal blocks with non-zero elements due to non-initialisation of the matrix. Second, the integer flag for the Axes (x, y, z) was passed as a arma::uvec, where arma::ivec should be used.

# cda 1.3.3

* CRAN update

* submitting more complete copyright information at the request of CRAN maintainers, to explicitly state the copyright of LAPACK routine src/zgels.f

# cda 1.3.1

INTERNAL CHANGES:

* depends on dielectric 0.2.2

# cda 1.3 (2012-11-28)

INTERNAL CHANGES:

* fixed polarisation and orientation issues in dispersion calculations

* cleaned up internal code

* started using testthat for consistency checks in future releases

USER VISIBLE CHANGES:

* function names have changed to be more consistent

* all dimensions are now in nanometres

* updated the licence to GPL3 + LICENCE file

DOCUMENTATION:

* new examples under inst/wiki formatted for knitr+markdown and updating the github wiki

* cleaning up demos, examples and vignettes

* link to github + wiki as the source of documentation

# cda 1.2 (2012-08-08)

INTERNAL CHANGES:

* explicit export of functions

* theme_minimal adapted for ggplot2

NEW FUNCTIONALITY:

* dispersion_spectrum() calculates the optical response as a function of incident angles and wavelength, for two orthogonal linear polarisation states

# cda 1.1.3 (2012-02-07)

* fixed bugs for ggplot2-0.9.0

# cda 1.1.2 (2011-10-07)

* fixed implicit conversion of sqrt(2) to sqrt(2.0) for Solaris
* fixed .onLoad function

# cda 1.1.1 (2011-09-04) (ftp error)

# cda 1.1 (2011-09-04)

USER-VISIBLE CHANGES:

* New dependency on randtoolbox (Halton sequences for Quasi-Monte Carlo angular averaging.

ENHANCEMENTS:

* Choice of three methods for angular averaging: regular grid, Gauss Legendre Quadrature, Quasi-Monte Carlo (default). N now refers to the  number of integration points (GL may use a slightly higher number of points, rounded as ceiling[sqrt(N)]).

* added tests/ subdirectory, featuring numerical tests of consistency.

BUG FIXES:

* Removed Encoding: UTF-8 from Description

# cda 1.0 (2011-05-15)
----------------------------------------

Initial CRAN release.
