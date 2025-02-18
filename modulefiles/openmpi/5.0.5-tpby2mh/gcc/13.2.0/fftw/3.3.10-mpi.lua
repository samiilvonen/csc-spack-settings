-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 16:08:46.407482
--
-- fftw@3.3.10%gcc@13.2.0+mpi~openmp~pfft_patches+shared build_system=autotools precision=double,float arch=linux-rhel8-cascadelake/tj75jr7
--

whatis([[Name : fftw]])
whatis([[Version : 3.3.10]])
whatis([[Target : cascadelake]])
whatis([[Short description : FFTW is a C subroutine library for computing the discrete Fourier transform (DFT) in one or more dimensions, of arbitrary input size, and of both real and complex data (as well as of even/odd data, i.e. the discrete cosine/sine transforms or DCT/DST). We believe that FFTW, which is free software, should become the FFT library of choice for most applications.]])

help([[Name   : fftw]])
help([[Version: 3.3.10]])
help([[Target : cascadelake]])
help()
help([[FFTW is a C subroutine library for computing the discrete Fourier
transform (DFT) in one or more dimensions, of arbitrary input size, and
of both real and complex data (as well as of even/odd data, i.e. the
discrete cosine/sine transforms or DCT/DST). We believe that FFTW, which
is free software, should become the FFT library of choice for most
applications.]])


depends_on("openmpi/5.0.5")
conflict("fftw")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr/.", ":")
setenv("FFTW_INSTALL_ROOT", "/appl/spack/v022/install-tree/gcc-13.2.0/fftw-3.3.10-tj75jr")
append_path("MANPATH", "", ":")

