-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 16:08:46.978034
--
-- parallel-netcdf@1.12.3%gcc@13.2.0~burstbuffer+cxx+fortran+pic+shared build_system=autotools arch=linux-rhel8-cascadelake/swrs3uf
--

whatis([[Name : parallel-netcdf]])
whatis([[Version : 1.12.3]])
whatis([[Target : cascadelake]])
whatis([[Short description : PnetCDF (Parallel netCDF) is a high-performance parallel I/O library for accessing files in format compatibility with Unidata's NetCDF, specifically the formats of CDF-1, 2, and 5. ]])
whatis([[Configure options : --with-mpi=/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m SEQ_CC=/appl/spack/v022/spack/lib/spack/env/gcc/gcc --enable-cxx --enable-fortran CFLAGS=-fPIC CXXFLAGS=-fPIC FCFLAGS=-fPIC -fallow-argument-mismatch FFLAGS=-fPIC -fallow-argument-mismatch --enable-relax-coord-bound --enable-shared --enable-static --disable-silent-rules]])

help([[Name   : parallel-netcdf]])
help([[Version: 1.12.3]])
help([[Target : cascadelake]])
help()
help([[PnetCDF (Parallel netCDF) is a high-performance parallel I/O library for
accessing files in format compatibility with Unidata's NetCDF,
specifically the formats of CDF-1, 2, and 5.]])


depends_on("openmpi/5.0.5")
conflict("parallel-netcdf")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u/.", ":")
setenv("PARALLEL_NETCDF_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/parallel-netcdf-1.12.3-swrs3u")
append_path("MANPATH", "", ":")

