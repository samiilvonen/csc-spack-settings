-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 16:08:46.813054
--
-- netcdf-c@4.9.2%gcc@13.2.0+blosc~byterange+dap~fsync+hdf4~jna+mpi~nczarr_zip+optimize+parallel-netcdf+pic+shared+szip+zstd build_system=autotools patches=0161eb8 arch=linux-rhel8-cascadelake/6lfhysq
--

whatis([[Name : netcdf-c]])
whatis([[Version : 4.9.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : NetCDF (network Common Data Form) is a set of software libraries and machine-independent data formats that support the creation, access, and sharing of array-oriented scientific data. This is the C distribution.]])

help([[Name   : netcdf-c]])
help([[Version: 4.9.2]])
help([[Target : cascadelake]])
help()
help([[NetCDF (network Common Data Form) is a set of software libraries and
machine-independent data formats that support the creation, access, and
sharing of array-oriented scientific data. This is the C distribution.]])


depends_on("hdf5/1.14.3-mpi")
depends_on("libaec/1.0.6")
depends_on("openmpi/5.0.5")
depends_on("parallel-netcdf/1.12.3")
conflict("netcdf-c")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/.", ":")
append_path("HDF5_PLUGIN_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys/plugins", ":")
setenv("NETCDF_C_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/netcdf-c-4.9.2-6lfhys")
append_path("MANPATH", "", ":")

