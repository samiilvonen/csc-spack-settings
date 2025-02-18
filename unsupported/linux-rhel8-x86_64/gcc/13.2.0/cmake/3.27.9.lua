-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:30:08.824176
--
-- cmake@3.27.9%gcc@13.2.0~doc+ncurses+ownlibs build_system=generic build_type=Release arch=linux-rhel8-cascadelake/4lxlsxe
--

whatis([[Name : cmake]])
whatis([[Version : 3.27.9]])
whatis([[Target : cascadelake]])
whatis([[Short description : A cross-platform, open-source build system. CMake is a family of tools designed to build, test and package software. ]])

help([[Name   : cmake]])
help([[Version: 3.27.9]])
help([[Target : cascadelake]])
help()
help([[A cross-platform, open-source build system. CMake is a family of tools
designed to build, test and package software.]])


depends_on("curl/8.7.1")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cmake-3.27.9-4lxlsx/share/aclocal", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cmake-3.27.9-4lxlsx/bin", ":")
prepend_path("ACLOCAL_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cmake-3.27.9-4lxlsx/share/aclocal", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/cmake-3.27.9-4lxlsx/.", ":")

