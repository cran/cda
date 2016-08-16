
## ---- visuals ---------------

library(cda)
library(rgl)

## random cluster with colours
cl1 <- function(N=50){
  R = 50;
  s = 4;
  cl = cluster_shell(N, R, s, 1, 1, 1,'random', 'hc',
                     exclusion = 10);
  rr <- runif(N, 0.6, 1.0)
  cl$sizes = s*rbind(rr, rr, runif(N, 1.2, 2.2));
  colours = scales::hue_pal()(N)
  # open3d()
  visualise(cl, col=colours)
  # rgl.close()
}

cl2 <- function(N=50){
  R = 15;
  s = 4;
  cl = cluster_shell(N, R, s, 1, 1, 3,  'radial', 'fibonacci');
  colours = scales::hue_pal()(N)
  # open3d()
  visualise(cl, col=colours)
  # rgl.close()
}

cl3 <- function(N=50){
  R = 15;
  s = 4;
  cl = cluster_shell(N, R, s, 1, 1, 3,  'flat', 'fibonacci');
  colours = scales::hue_pal()(N)
  # open3d()
  visualise(cl, col=colours)
  # rgl.close()
}

cl4 <- function(N=50){
  R = 15;
  s = 4;
  cl = cluster_shell(N, R, s, 1, 1, 3,  'random', 'fibonacci');
  colours = scales::hue_pal()(N)
  # open3d()
  visualise(cl, col=colours)
  # rgl.close()
}

cl5 <- function(){
  
  d = 50;
  a = 50; b=20; c=20;
  dihedral = pi/4;
  cl = cluster_dimer(d, a,b,c, dihedral,0,0);
  # open3d()
  visualise(cl, col="gold")
  # rgl.close()
}

cl6 <- function(N=20){
  cl = cluster_helix(N,
                     a=10, b=10, c=20,
                     R0=100, pitch=200,
                     delta=pi/5)
  colours = scales::hue_pal()(N)
  # open3d()
  visualise(cl, col=colours, show_core=FALSE)
  # rgl.close()
}

cl7 <- function(N=10){
  cl = cluster_chain(N, pitch=100, a=20, b=20, c=50)
  colours = scales::hue_pal()(N)
  # open3d()
  visualise(cl, col=colours)
  # rgl.close()
}

cl8 <- function(N=100){
  cl = cluster_array(N, pitch=200, a=50, b=20, c=20)
  colours = scales::hue_pal()(N)
  # open3d()
  visualise(cl, col=colours)
  # rgl.close()
}


open3d()
layout3d(matrix(1:8, 2, 4, byrow=TRUE))
cl1(); next3d()
cl2(); next3d()
cl3(); next3d()
cl4(); next3d()
cl5(); next3d()
cl6(); next3d()
cl7(); next3d()
cl8()
par3d(windowRect=c(0, 100, 800, 500))

