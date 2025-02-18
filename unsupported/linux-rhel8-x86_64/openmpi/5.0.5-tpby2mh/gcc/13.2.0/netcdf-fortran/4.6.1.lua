-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 14:05:15.441881
--
-- netcdf-fortran@4.6.1%gcc@13.2.0~doc+pic+shared build_system=autotools arch=linux-rhel8-cascadelake/wwft3xt
--

whatis([[Name : netcdf-fortran]])
whatis([[Version : 4.6.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : NetCDF (network Common Data Form) is a set of software libraries and machine-independent data formats that support the creation, access, and sharing of array-oriented scientific data. This is the Fortran distribution.]])
whatis([[Configure options : --enable-static --enable-shared --disable-doxygen --disable-parallel-tests]])

help([[Name   : netcdf-fortran]])
help([[Version: 4.6.1]])
help([[Target : cascadelake]])
help()
help([[NetCDF (network Common Data Form) is a set of software libraries and
machine-independent data formats that support the creation, access, and
sharing of array-oriented scientific data. This is the Fortran
distribution.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("netcdf-c/4.9.2")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-fortran-4.6.1-wwft3x/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-fortran-4.6.1-wwft3x/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-fortran-4.6.1-wwft3x/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-fortran-4.6.1-wwft3x/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-fortran-4.6.1-wwft3x/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-fortran-4.6.1-wwft3x/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-fortran-4.6.1-wwft3x/.", ":")
append_path("MANPATH", "", ":")

