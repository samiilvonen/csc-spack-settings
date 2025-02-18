-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:56:29.293358
--
-- libbsd@0.12.1%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/5tpfl3k
--

whatis([[Name : libbsd]])
whatis([[Version : 0.12.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : This library provides useful functions commonly found on BSD systems, and lacking on others like GNU systems, thus making it easier to port projects with strong BSD origins, without needing to embed the same code over and over again on each project. ]])

help([[Name   : libbsd]])
help([[Version: 0.12.1]])
help([[Target : cascadelake]])
help()
help([[This library provides useful functions commonly found on BSD systems,
and lacking on others like GNU systems, thus making it easier to port
projects with strong BSD origins, without needing to embed the same code
over and over again on each project.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("libmd/1.0.4")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libbsd-0.12.1-5tpfl3/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libbsd-0.12.1-5tpfl3/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libbsd-0.12.1-5tpfl3/share/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libbsd-0.12.1-5tpfl3/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libbsd-0.12.1-5tpfl3/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libbsd-0.12.1-5tpfl3/.", ":")
append_path("MANPATH", "", ":")

