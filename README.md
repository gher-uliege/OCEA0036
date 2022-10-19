# OCEA0036
Structure and application of numerical ocean models (OCEA0036-1)


## Required software

It is required that the students install Julia (https://julialang.org/downloads/). One should also install the packages PyPlot, NCDatasets and IJulia with the following commands to be executed inside the Julia command line interface:


```julia
using Pkg
Pkg.add("PyPlot")
Pkg.add("NCDatasets")
Pkg.add("IJulia")
using PyPlot
using IJulia
```

Please follow the video tutorials about julia available at: https://www.youtube.com/watch?v=76KL8aSz0Sg and https://julialang.org/learning/

The software should be installed before the first lecture. 




# Lecture’s notes

The lecture can be downloaded as a zip file  [OCEA0036-1-revision-1.6.4.zip](http://data-assimilation.net/upload/OCEA0036/OCEA0036-1-revision-1.6.4.zip)



# Data for the exercises
* World Ocean Atlas Temperature ([NetCDF Format](http://data-assimilation.net/upload/OCEA0036/t00an1.nc))
* World Ocean Atlas Salinity ([NetCDF Format](http://data-assimilation.net/upload/OCEA0036/s00an1.nc))
* Sea surface height [ssh_20071127.nc](http://data-assimilation.net/upload/OCEA0036/ssh_20071127.nc)
* Global bathymetry ETOPO 5 ([NetCDF Format](http://data-assimilation.net/upload/OCEA0036/etopo5_adjusted.nc))


# Julia scripts

The solution of the exercises are available as Julia script:

http://data-assimilation.net/upload/OCEA0036/OCEA0036-julia.tar.gz
