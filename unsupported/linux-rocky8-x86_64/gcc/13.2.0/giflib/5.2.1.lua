-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:26:18.195874
--
-- giflib@5.2.1%gcc@13.2.0 build_system=makefile patches=5cc0447 arch=linux-rocky8-cascadelake/agwui2z
--

whatis([[Name : giflib]])
whatis([[Version : 5.2.1]])
whatis([[Target : cascadelake]])
whatis([[Short description : The GIFLIB project maintains the giflib service library, which has been pulling images out of GIFs since 1989.]])

help([[Name   : giflib]])
help([[Version: 5.2.1]])
help([[Target : cascadelake]])
help()
help([[The GIFLIB project maintains the giflib service library, which has been
pulling images out of GIFs since 1989.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/giflib-5.2.1-agwui2/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/giflib-5.2.1-agwui2/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/giflib-5.2.1-agwui2/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/giflib-5.2.1-agwui2/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/giflib-5.2.1-agwui2/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/giflib-5.2.1-agwui2/.", ":")
append_path("MANPATH", "", ":")

