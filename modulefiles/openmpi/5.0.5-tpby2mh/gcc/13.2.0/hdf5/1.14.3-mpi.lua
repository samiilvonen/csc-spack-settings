-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 16:08:46.545673
--
-- hdf5@1.14.3%gcc@13.2.0+cxx+fortran+hl~ipo~java~map+mpi+shared~subfiling+szip+threadsafe+tools api=default build_system=cmake build_type=Release generator=make patches=82088c8 arch=linux-rhel8-cascadelake/infqqvu
--

whatis([[Name : hdf5]])
whatis([[Version : 1.14.3]])
whatis([[Target : cascadelake]])
whatis([[Short description : HDF5 is a data model, library, and file format for storing and managing data. It supports an unlimited variety of datatypes, and is designed for flexible and efficient I/O and for high volume and complex data. ]])
whatis([[Configure options : -DALLOW_UNSUPPORTED:BOOL=ON -DHDF5_BUILD_EXAMPLES:BOOL=OFF -DBUILD_TESTING:BOOL=OFF -DHDF5_ENABLE_SUBFILING_VFD:BOOL=OFF -DHDF5_ENABLE_MAP_API:BOOL=OFF -DHDF5_ENABLE_Z_LIB_SUPPORT:BOOL=ON -DHDF5_ENABLE_SZIP_SUPPORT:BOOL=ON -DHDF5_ENABLE_SZIP_ENCODING:BOOL=ON -DBUILD_SHARED_LIBS:BOOL=ON -DONLY_SHARED_LIBS:BOOL=OFF -DHDF5_ENABLE_PARALLEL:BOOL=ON -DHDF5_ENABLE_THREADSAFE:BOOL=ON -DHDF5_BUILD_HL_LIB:BOOL=ON -DHDF5_BUILD_CPP_LIB:BOOL=ON -DHDF5_BUILD_FORTRAN:BOOL=ON -DHDF5_BUILD_JAVA:BOOL=OFF -DHDF5_BUILD_TOOLS:BOOL=ON -DMPI_CXX_COMPILER:PATH=/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpic++ -DMPI_C_COMPILER:PATH=/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpicc -DMPI_Fortran_COMPILER:PATH=/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpif90]])

help([[Name   : hdf5]])
help([[Version: 1.14.3]])
help([[Target : cascadelake]])
help()
help([[HDF5 is a data model, library, and file format for storing and managing
data. It supports an unlimited variety of datatypes, and is designed for
flexible and efficient I/O and for high volume and complex data.]])


depends_on("libaec/1.0.6")
depends_on("openmpi/5.0.5")
conflict("hdf5")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/.", ":")
append_path("LD_LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv/lib", ":")
setenv("HDF5_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/hdf5-1.14.3-infqqv")

