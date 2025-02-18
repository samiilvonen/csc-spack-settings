-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 16:08:46.446416
--
-- gcc@13.2.0%gcc@8.5.0+binutils~bootstrap~graphite~nvptx~piclibs+strip build_system=autotools build_type=RelWithDebInfo languages='c,c++,fortran,jit' arch=linux-rhel8-skylake_avx512/hgaeyz2
--

whatis([[Name : gcc]])
whatis([[Version : 13.2.0]])
whatis([[Target : skylake_avx512]])
whatis([[Short description : The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Ada, and Go, as well as libraries for these languages.]])
whatis([[Configure options : --with-pkgversion=Spack GCC --with-bugurl=https://github.com/spack/spack/issues --disable-multilib --enable-languages=c,c++,fortran,jit --disable-nls --disable-canonical-system-headers --with-system-zlib --with-zstd-include=/appl/spack/v022/install-tree/gcc-8.5.0/zstd-1.5.6-bch7ql/include --with-zstd-lib=/appl/spack/v022/install-tree/gcc-8.5.0/zstd-1.5.6-bch7ql/lib --enable-host-shared --with-gnu-ld --with-ld=/appl/spack/v022/install-tree/gcc-8.5.0/binutils-2.42-waaqjy/bin/ld --with-gnu-as --with-as=/appl/spack/v022/install-tree/gcc-8.5.0/binutils-2.42-waaqjy/bin/as --disable-bootstrap --with-mpfr-include=/appl/spack/v022/install-tree/gcc-8.5.0/mpfr-4.2.1-x5stp3/include --with-mpfr-lib=/appl/spack/v022/install-tree/gcc-8.5.0/mpfr-4.2.1-x5stp3/lib --with-gmp-include=/appl/spack/v022/install-tree/gcc-8.5.0/gmp-6.2.1-zwsfs5/include --with-gmp-lib=/appl/spack/v022/install-tree/gcc-8.5.0/gmp-6.2.1-zwsfs5/lib --with-mpc-include=/appl/spack/v022/install-tree/gcc-8.5.0/mpc-1.3.1-yrm44x/include --with-mpc-lib=/appl/spack/v022/install-tree/gcc-8.5.0/mpc-1.3.1-yrm44x/lib --without-isl --with-stage1-ldflags=-Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib64 -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/binutils-2.42-waaqjy/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-runtime-8.5.0-tam75x/lib -Wl,-rpath,/usr/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gmp-6.2.1-zwsfs5/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/mpc-1.3.1-yrm44x/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/mpfr-4.2.1-x5stp3/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/zstd-1.5.6-bch7ql/lib -Wl,-rpath,/usr/lib64 --with-boot-ldflags=-Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib64 -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/binutils-2.42-waaqjy/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-runtime-8.5.0-tam75x/lib -Wl,-rpath,/usr/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gmp-6.2.1-zwsfs5/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/mpc-1.3.1-yrm44x/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/mpfr-4.2.1-x5stp3/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda/lib -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/zstd-1.5.6-bch7ql/lib -Wl,-rpath,/usr/lib64 -static-libstdc++ -static-libgcc --with-build-config=spack]])

help([[Name   : gcc]])
help([[Version: 13.2.0]])
help([[Target : skylake_avx512]])
help()
help([[The GNU Compiler Collection includes front ends for C, C++, Objective-C,
Fortran, Ada, and Go, as well as libraries for these languages.]])

-- Services provided by the package
family("compiler")

-- Loading this module unlocks the path below unconditionally
prepend_path("MODULEPATH", "/appl/spack/v022/modulefiles/gcc/13.2.0")


conflict("gcc")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/.", ":")
setenv("CC", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/bin/gcc")
setenv("CXX", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/bin/g++")
setenv("FC", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/bin/gfortran")
setenv("F77", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/bin/gfortran")
setenv("GCC_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz")
setenv("CC", "gcc")
setenv("CXX", "g++")
setenv("FC", "gfortran")
setenv("F90", "gfortran")
setenv("F77", "gfortran")
setenv("I_MPI_CC", "gcc")
setenv("I_MPI_CXX", "g++")
setenv("I_MPI_FC", "gfortran")
setenv("I_MPI_F90", "gfortran")
setenv("I_MPI_F77", "gfortran")
append_path("MANPATH", "", ":")

