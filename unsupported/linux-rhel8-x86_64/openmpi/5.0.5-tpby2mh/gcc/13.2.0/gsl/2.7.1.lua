-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 15:47:13.093432
--
-- gsl@2.7.1%gcc@13.2.0+external-cblas+pic+shared build_system=autotools patches=d2eefcf arch=linux-rhel8-cascadelake/3czso77
--

whatis([[Name : gsl]])
whatis([[Version : 2.7.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers. It is free software under the GNU General Public License. The library provides a wide range of mathematical routines such as random number generators, special functions and least-squares fitting. There are over 1000 functions in total with an extensive test suite.]])
whatis([[Configure options : --with-external-cblas CBLAS_CFLAGS=-I/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/include CBLAS_LIBS=-L/appl/spack/v022/install-tree/gcc-13.2.0/intel-oneapi-mkl-2024.0.0-rm55cl/mkl/2024.0/lib -L/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib -L/lib64 -lmkl_scalapack_lp64 -lmkl_cdft_core -lmkl_gf_lp64 -lmkl_tbb_thread -lmkl_core -lmkl_blacs_openmpi_lp64 -lmpi -lpthread -lm -ldl --enable-shared --with-pic]])

help([[Name   : gsl]])
help([[Version: 2.7.1]])
help([[Target : cascadelake]])
help()
help([[The GNU Scientific Library (GSL) is a numerical library for C and C++
programmers. It is free software under the GNU General Public License.
The library provides a wide range of mathematical routines such as
random number generators, special functions and least-squares fitting.
There are over 1000 functions in total with an extensive test suite.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("intel-oneapi-mkl/2024.0.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/share/man", ":")
prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/share/aclocal", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/share/man", ":")
prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/share/aclocal", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7/.", ":")
setenv("GSL_ROOT_DIR", "/appl/spack/v022/install-tree/gcc-13.2.0/gsl-2.7.1-3czso7")
append_path("MANPATH", "", ":")

