-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 10:15:53.268519
--
-- libint@2.6.0%gcc@13.2.0~debug~fma+fortran build_system=autotools tune=cp2k-lmax-5 arch=linux-rhel8-cascadelake/nigqlsw
--

whatis([[Name : libint]])
whatis([[Version : 2.6.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : Libint is a high-performance library for computing Gaussian integrals in quantum mechanics. ]])
whatis([[Configure options : --enable-shared --with-boost=/appl/spack/v022/install-tree/gcc-13.2.0/boost-1.85.0-hli5hj --with-cxx-optflags=-O2 --with-cxxgen-optflags=-O2 --with-libint-exportdir=generated --disable-debug --disable-fma --enable-eri=1 --enable-eri2=1 --enable-eri3=1 --with-max-am=5 --with-eri-max-am=5,4 --with-eri2-max-am=7,6 --with-eri3-max-am=7,6 --with-opt-am=3 --enable-generic-code --disable-unrolling]])

help([[Name   : libint]])
help([[Version: 2.6.0]])
help([[Target : cascadelake]])
help()
help([[Libint is a high-performance library for computing Gaussian integrals in
quantum mechanics.]])


depends_on("boost/1.85.0")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libint-2.6.0-nigqls/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libint-2.6.0-nigqls/lib", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libint-2.6.0-nigqls/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libint-2.6.0-nigqls/.", ":")

