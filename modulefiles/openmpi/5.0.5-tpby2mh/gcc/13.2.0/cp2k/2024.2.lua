-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 10:27:59.732451
--
-- cp2k@2024.2%gcc@13.2.0~cosma~cuda~dlaf+elpa~enable_regtests~ipo+libint~libvori+libxc+mpi~mpi_f08+openmp~pexsi~plumed~pytorch~quip~rocm~sirius~spglib~spla build_system=cmake build_type=Release generator=make lmax=5 smm=libxsmm arch=linux-rhel8-cascadelake/h4kg64y
--

whatis([[Name : cp2k]])
whatis([[Version : 2024.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : CP2K is a quantum chemistry and solid state physics software package that can perform atomistic simulations of solid state, liquid, molecular, periodic, material, crystal, and biological systems ]])

help([[Name   : cp2k]])
help([[Version: 2024.2]])
help([[Target : cascadelake]])
help()
help([[CP2K is a quantum chemistry and solid state physics software package
that can perform atomistic simulations of solid state, liquid,
molecular, periodic, material, crystal, and biological systems]])


depends_on("intel-oneapi-mkl/2024.0.0")
depends_on("openmpi/5.0.5")
conflict("cp2k")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/.", ":")
setenv("CP2K_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64")

