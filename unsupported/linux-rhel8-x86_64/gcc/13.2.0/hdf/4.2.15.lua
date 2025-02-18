-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:01:56.426721
--
-- hdf@4.2.15%gcc@13.2.0~external-xdr~fortran~java~netcdf+pic+shared+szip build_system=autotools patches=49733dd,5434f29,ce75518,d54592d,f7d67e8 arch=linux-rhel8-cascadelake/d2sm5q6
--

whatis([[Name : hdf]])
whatis([[Version : 4.2.15]])
whatis([[Target : cascadelake]])
whatis([[Short description : HDF4 (also known as HDF) is a library and multi-object file format for storing and managing data between machines.]])
whatis([[Configure options : --enable-production --enable-static --with-zlib=/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda --with-jpeg=/appl/spack/v022/install-tree/gcc-13.2.0/libjpeg-turbo-3.0.0-edxd5g --enable-shared --disable-netcdf --disable-fortran --disable-java --with-szlib=/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj --enable-hdf4-xdr FFLAGS=-fallow-argument-mismatch FCFLAGS=-fallow-argument-mismatch]])

help([[Name   : hdf]])
help([[Version: 4.2.15]])
help([[Target : cascadelake]])
help()
help([[HDF4 (also known as HDF) is a library and multi-object file format for
storing and managing data between machines.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libaec/1.0.6")
depends_on("libjpeg-turbo/3.0.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf-4.2.15-d2sm5q/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf-4.2.15-d2sm5q/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf-4.2.15-d2sm5q/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf-4.2.15-d2sm5q/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf-4.2.15-d2sm5q/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf-4.2.15-d2sm5q/.", ":")
append_path("MANPATH", "", ":")

