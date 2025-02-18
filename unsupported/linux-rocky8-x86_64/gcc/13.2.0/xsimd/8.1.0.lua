-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:29:20.452253
--
-- xsimd@8.1.0%gcc@13.2.0~ipo build_system=cmake build_type=Release generator=make arch=linux-rocky8-cascadelake/iht34bx
--

whatis([[Name : xsimd]])
whatis([[Version : 8.1.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : C++ wrappers for SIMD intrinsics]])
whatis([[Configure options : -DBUILD_TESTS:BOOL=OFF]])

help([[Name   : xsimd]])
help([[Version: 8.1.0]])
help([[Target : cascadelake]])
help()
help([[C++ wrappers for SIMD intrinsics]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/xsimd-8.1.0-iht34b/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/xsimd-8.1.0-iht34b/lib64", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/xsimd-8.1.0-iht34b/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/xsimd-8.1.0-iht34b/.", ":")

