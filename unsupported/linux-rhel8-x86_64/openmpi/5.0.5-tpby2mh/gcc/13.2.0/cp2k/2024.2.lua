-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 10:26:07.881595
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


depends_on("dbcsr/2.6.0")
depends_on("elpa/2023.11.001-patched")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("intel-oneapi-mkl/2024.0.0")
depends_on("libint/2.6.0")
depends_on("libxc/6.2.2")
depends_on("libxsmm/1.17")
depends_on("openmpi/5.0.5")
depends_on("py-fypp/3.1")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cp2k-2024.2-h4kg64/.", ":")

