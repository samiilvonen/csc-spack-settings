-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 11:39:08.639558
--
-- numactl@2.0.14%gcc@13.2.0 build_system=autotools patches=4e1d78c,62fc8a8,ff37630 arch=linux-rhel8-cascadelake/v5sjeke
--

whatis([[Name : numactl]])
whatis([[Version : 2.0.14]])
whatis([[Target : cascadelake]])
whatis([[Short description : NUMA support for Linux]])

help([[Name   : numactl]])
help([[Version: 2.0.14]])
help([[Target : cascadelake]])
help()
help([[NUMA support for Linux]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/numactl-2.0.14-v5sjek/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/numactl-2.0.14-v5sjek/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/numactl-2.0.14-v5sjek/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/numactl-2.0.14-v5sjek/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/numactl-2.0.14-v5sjek/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/numactl-2.0.14-v5sjek/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/numactl-2.0.14-v5sjek/.", ":")
append_path("MANPATH", "", ":")

