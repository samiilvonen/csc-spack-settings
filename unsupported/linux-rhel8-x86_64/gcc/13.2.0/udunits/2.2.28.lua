-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:58:54.255252
--
-- udunits@2.2.28%gcc@13.2.0+shared build_system=autotools arch=linux-rhel8-cascadelake/pckgfv7
--

whatis([[Name : udunits]])
whatis([[Version : 2.2.28]])
whatis([[Target : cascadelake]])
whatis([[Short description : Automated units conversion]])
whatis([[Configure options : --enable-shared]])

help([[Name   : udunits]])
help([[Version: 2.2.28]])
help([[Target : cascadelake]])
help()
help([[Automated units conversion]])


depends_on("expat/2.6.2")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/udunits-2.2.28-pckgfv/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/udunits-2.2.28-pckgfv/lib", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/udunits-2.2.28-pckgfv/bin", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/udunits-2.2.28-pckgfv/.", ":")

