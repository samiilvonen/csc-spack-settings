-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 13:59:52.489559
--
-- libaec@1.0.6%gcc@13.2.0~ipo+shared build_system=cmake build_type=Release generator=make arch=linux-rhel8-cascadelake/py22bj5
--

whatis([[Name : libaec]])
whatis([[Version : 1.0.6]])
whatis([[Target : cascadelake]])
whatis([[Short description : Libaec provides fast lossless compression of 1 up to 32 bit wide signed or unsigned integers (samples). It implements Golomb-Rice compression method under the BSD license and includes a free drop-in replacement for the SZIP library. ]])
whatis([[Configure options : -DBUILD_SHARED_LIBS:BOOL=ON]])

help([[Name   : libaec]])
help([[Version: 1.0.6]])
help([[Target : cascadelake]])
help()
help([[Libaec provides fast lossless compression of 1 up to 32 bit wide signed
or unsigned integers (samples). It implements Golomb-Rice compression
method under the BSD license and includes a free drop-in replacement for
the SZIP library.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj/share/man", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/libaec-1.0.6-py22bj/.", ":")
append_path("MANPATH", "", ":")

