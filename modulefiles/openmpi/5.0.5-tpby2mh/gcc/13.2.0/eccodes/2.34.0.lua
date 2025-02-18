-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 16:08:46.358546
--
-- eccodes@2.34.0%gcc@13.2.0+aec+fortran~ipo+memfs+netcdf+openmp+png~pthreads+shared+tools build_system=cmake build_type=Release extra_definitions=none generator=make jp2k=jasper arch=linux-rhel8-cascadelake/yuz5jbb
--

whatis([[Name : eccodes]])
whatis([[Version : 2.34.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : ecCodes is a package developed by ECMWF for processing meteorological data in GRIB (1/2), BUFR (3/4) and GTS header formats.]])
whatis([[Configure options : -DENABLE_BUILD_TOOLS:BOOL=ON -DENABLE_NETCDF:BOOL=ON -DENABLE_JPG:BOOL=ON -DENABLE_JPG_LIBJASPER:BOOL=ON -DENABLE_JPG_LIBOPENJPEG:BOOL=OFF -DENABLE_PNG:BOOL=ON -DENABLE_AEC:BOOL=ON -DENABLE_ECCODES_THREADS:BOOL=OFF -DENABLE_ECCODES_OMP_THREADS:BOOL=ON -DENABLE_MEMFS:BOOL=ON -DENABLE_PYTHON2:BOOL=OFF -DENABLE_FORTRAN:BOOL=ON -DBUILD_SHARED_LIBS:STRING=BOTH -DENABLE_TESTS:BOOL=OFF -DENABLE_EXAMPLES:BOOL=OFF -DENABLE_EXTRA_TESTS:BOOL=OFF -DNETCDF_PATH:STRING=/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys -DZLIB_ROOT:STRING=/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda -DAEC_DIR:STRING=/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj]])

help([[Name   : eccodes]])
help([[Version: 2.34.0]])
help([[Target : cascadelake]])
help()
help([[ecCodes is a package developed by ECMWF for processing meteorological
data in GRIB (1/2), BUFR (3/4) and GTS header formats.]])


depends_on("jasper/3.0.3")
depends_on("libaec/1.0.6")
depends_on("netcdf-c/4.9.2")
conflict("eccodes")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/eccodes-2.34.0-yuz5jb/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/eccodes-2.34.0-yuz5jb/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/eccodes-2.34.0-yuz5jb/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/eccodes-2.34.0-yuz5jb/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/eccodes-2.34.0-yuz5jb/.", ":")
setenv("ECCODES_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/eccodes-2.34.0-yuz5jb")

