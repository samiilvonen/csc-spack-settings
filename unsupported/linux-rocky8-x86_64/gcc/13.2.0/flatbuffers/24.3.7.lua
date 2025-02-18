-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:16.663335
--
-- flatbuffers@24.3.7%gcc@13.2.0~ipo~python+shared build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/sddyegj
--

whatis([[Name : flatbuffers]])
whatis([[Version : 24.3.7]])
whatis([[Target : cascadelake]])
whatis([[Short description : Memory Efficient Serialization Library]])
whatis([[Configure options : -DFLATBUFFERS_BUILD_SHAREDLIB:BOOL=ON -DFLATBUFFERS_BUILD_FLATLIB=OFF]])

help([[Name   : flatbuffers]])
help([[Version: 24.3.7]])
help([[Target : cascadelake]])
help()
help([[Memory Efficient Serialization Library]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flatbuffers-24.3.7-sddyeg/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flatbuffers-24.3.7-sddyeg/lib64", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flatbuffers-24.3.7-sddyeg/bin", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flatbuffers-24.3.7-sddyeg/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/flatbuffers-24.3.7-sddyeg/.", ":")

