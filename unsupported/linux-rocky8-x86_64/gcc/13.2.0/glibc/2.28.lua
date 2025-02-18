-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-07 09:30:01.197568
--
-- glibc@2.28%gcc@13.2.0 build_system=autotools arch=linux-rocky8-skylake_avx512/g3izul3
--

whatis([[Name : glibc]])
whatis([[Version : 2.28]])
whatis([[Target : skylake_avx512]])
whatis([[Short description : The GNU C Library provides many of the low-level components used directly by programs written in the C or C++ languages.]])
whatis([[Configure options : unknown, software installed outside of Spack]])

help([[Name   : glibc]])
help([[Version: 2.28]])
help([[Target : skylake_avx512]])
help()
help([[The GNU C Library provides many of the low-level components used
directly by programs written in the C or C++ languages.]])



prepend_path("MANPATH", "/usr/share/man", ":")
prepend_path("ACLOCAL_PATH", "/usr/share/aclocal", ":")
prepend_path("MANPATH", "/usr/share/man", ":")
prepend_path("ACLOCAL_PATH", "/usr/share/aclocal", ":")
prepend_path("PKG_CONFIG_PATH", "/usr/lib64/pkgconfig", ":")
prepend_path("PKG_CONFIG_PATH", "/usr/share/pkgconfig", ":")
append_path("MANPATH", "", ":")

