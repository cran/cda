context("Checking the behavior of low level functions")

test_that("Dielectric function is correct", {
  .gold <- structure(list(wavelength = c(400, 500, 600), 
                          epsilon = c(-1.64965688407203+5.77176308089817i, 
                                      -2.99223400282977+3.63036432730633i, 
                                      -9.07165375859948+1.40807251911031i)), 
                     .Names = c("wavelength", "epsilon"), row.names = c(NA, -3L), 
                     class = "data.frame")
  gold <- epsAu(seq(400, 600, by=100))
  expect_equal(gold, .gold)
})



gold <- epsAu(seq(400, 600, by=100))
cl <- cluster_dimer(d=100, 
              dihedral=0*pi/180, alpha1=20*pi/180, alpha2=0,
              a=35, b=12)

beta <- inverse_polarizability(cl, gold)
head(beta)
