
  cda <- new( "Module" )
  cd <- new( "Module" )
  linear <- new( "Module" )
  array <- new( "Module" )


 .onLoad <- function(pkgname, libname){
     loadRcppModules(direct=FALSE)
 }

