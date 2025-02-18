-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:08:19.975901
--
-- cdo@2.4.0%gcc@13.2.0+curl~external-grib1+fftw3+hdf5+libxml2~magics+netcdf+openmp+proj+szip+udunits2 build_system=autotools grib2=eccodes arch=linux-rhel8-cascadelake/gzn5t4s
--

whatis([[Name : cdo]])
whatis([[Version : 2.4.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : CDO is a collection of command line Operators to manipulate and analyse Climate and NWP model Data. ]])
whatis([[Configure options : --with-netcdf=/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys --with-eccodes=/appl/spack/v022/install-tree/gcc-13.2.0/eccodes-2.34.0-yuz5jb --without-grib_api --enable-cgribex --with-szlib=/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj --with-hdf5=/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv --with-udunits2=/appl/spack/v022/install-tree/gcc-13.2.0/udunits-2.2.28-pckgfv --with-libxml2=/appl/spack/v022/install-tree/gcc-8.5.0/libxml2-2.10.3-ivqbem --with-proj=/appl/spack/v022/install-tree/gcc-13.2.0/proj-9.2.1-afd2d6 --with-curl=/appl/spack/v022/install-tree/gcc-13.2.0/curl-8.7.1-hb4g2s --without-magics --with-fftw3 --enable-openmp LDFLAGS=-L/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/lib CPPFLAGS=-DOMPI_SKIP_MPICXX -DMPICH_SKIP_MPICXX]])

help([[Name   : cdo]])
help([[Version: 2.4.0]])
help([[Target : cascadelake]])
help()
help([[CDO is a collection of command line Operators to manipulate and analyse
Climate and NWP model Data.]])


depends_on("curl/8.7.1")
depends_on("eccodes/2.34.0")
depends_on("fftw/3.3.10")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("hdf5/1.14.3")
depends_on("libaec/1.0.6")
depends_on("netcdf-c/4.9.2")
depends_on("proj/9.2.1")
depends_on("udunits/2.2.28")
depends_on("util-linux-uuid/2.38.1")

prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cdo-2.4.0-gzn5t4/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cdo-2.4.0-gzn5t4/.", ":")

