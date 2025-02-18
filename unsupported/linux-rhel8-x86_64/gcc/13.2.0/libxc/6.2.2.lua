-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-23 09:45:49.315611
--
-- libxc@6.2.2%gcc@13.2.0~cuda~kxc~lxc+shared build_system=autotools arch=linux-rhel8-cascadelake/r3zzeoh
--

whatis([[Name : libxc]])
whatis([[Version : 6.2.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : Libxc is a library of exchange-correlation functionals for density-functional theory.]])
whatis([[Configure options : --enable-shared --disable-cuda]])

help([[Name   : libxc]])
help([[Version: 6.2.2]])
help([[Target : cascadelake]])
help()
help([[Libxc is a library of exchange-correlation functionals for density-
functional theory.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxc-6.2.2-r3zzeo/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxc-6.2.2-r3zzeo/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxc-6.2.2-r3zzeo/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxc-6.2.2-r3zzeo/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libxc-6.2.2-r3zzeo/.", ":")

