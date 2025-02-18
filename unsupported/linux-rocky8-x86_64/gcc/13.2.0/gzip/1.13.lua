-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:26:41.639106
--
-- gzip@1.13%gcc@13.2.0 build_system=autotools arch=linux-rocky8-cascadelake/vg7zoh4
--

whatis([[Name : gzip]])
whatis([[Version : 1.13]])
whatis([[Target : cascadelake]])
whatis([[Short description : GNU Gzip is a popular data compression program originally written by Jean-loup Gailly for the GNU project.]])

help([[Name   : gzip]])
help([[Version: 1.13]])
help([[Target : cascadelake]])
help()
help([[GNU Gzip is a popular data compression program originally written by
Jean-loup Gailly for the GNU project.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gzip-1.13-vg7zoh/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gzip-1.13-vg7zoh/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gzip-1.13-vg7zoh/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gzip-1.13-vg7zoh/.", ":")
append_path("MANPATH", "", ":")

