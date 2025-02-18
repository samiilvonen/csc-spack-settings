-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-28 14:19:21.117609
--
-- unzip@6.0%gcc@13.2.0 build_system=makefile patches=f6f6236 arch=linux-rhel8-cascadelake/2tkugur
--

whatis([[Name : unzip]])
whatis([[Version : 6.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : Unzip is a compression and file packaging/archive utility.]])

help([[Name   : unzip]])
help([[Version: 6.0]])
help([[Target : cascadelake]])
help()
help([[Unzip is a compression and file packaging/archive utility.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/unzip-6.0-2tkugu/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/unzip-6.0-2tkugu/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/unzip-6.0-2tkugu/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/unzip-6.0-2tkugu/.", ":")
append_path("MANPATH", "", ":")

