-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:56:05.594545
--
-- libmd@1.0.4%gcc@13.2.0 build_system=autotools arch=linux-rhel8-cascadelake/wej3vf5
--

whatis([[Name : libmd]])
whatis([[Version : 1.0.4]])
whatis([[Target : cascadelake]])
whatis([[Short description : This library provides message digest functions found on BSD systems either on their libc (NetBSD, OpenBSD) or libmd (FreeBSD, DragonflyBSD, macOS, Solaris) libraries and lacking on others like GNU systems.]])

help([[Name   : libmd]])
help([[Version: 1.0.4]])
help([[Target : cascadelake]])
help()
help([[This library provides message digest functions found on BSD systems
either on their libc (NetBSD, OpenBSD) or libmd (FreeBSD, DragonflyBSD,
macOS, Solaris) libraries and lacking on others like GNU systems.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libmd-1.0.4-wej3vf/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libmd-1.0.4-wej3vf/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libmd-1.0.4-wej3vf/share/man", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libmd-1.0.4-wej3vf/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libmd-1.0.4-wej3vf/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libmd-1.0.4-wej3vf/.", ":")
append_path("MANPATH", "", ":")

