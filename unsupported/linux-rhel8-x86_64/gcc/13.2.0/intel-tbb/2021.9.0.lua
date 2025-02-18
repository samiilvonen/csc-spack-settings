-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:32:39.053526
--
-- intel-tbb@2021.9.0%gcc@13.2.0~ipo+shared+tm build_system=cmake build_type=Release cxxstd=default generator=make patches=91755c6 arch=linux-rhel8-cascadelake/lpbfi3x
--

whatis([[Name : intel-tbb]])
whatis([[Version : 2021.9.0]])
whatis([[Target : cascadelake]])
whatis([[Short description : Widely used C++ template library for task parallelism. Intel Threading Building Blocks (Intel TBB) lets you easily write parallel C++ programs that take full advantage of multicore performance, that are portable and composable, and that have future-proof scalability. ]])

help([[Name   : intel-tbb]])
help([[Version: 2021.9.0]])
help([[Target : cascadelake]])
help()
help([[Widely used C++ template library for task parallelism. Intel Threading
Building Blocks (Intel TBB) lets you easily write parallel C++ programs
that take full advantage of multicore performance, that are portable and
composable, and that have future-proof scalability.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("hwloc/2.2.0")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-tbb-2021.9.0-lpbfi3/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-tbb-2021.9.0-lpbfi3/lib64", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-tbb-2021.9.0-lpbfi3/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/intel-tbb-2021.9.0-lpbfi3/.", ":")

