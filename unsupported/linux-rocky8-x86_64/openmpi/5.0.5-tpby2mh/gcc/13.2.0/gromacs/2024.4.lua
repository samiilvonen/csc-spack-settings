-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-07 09:33:07.835404
--
-- gromacs@2024.4%gcc@13.2.0~cp2k~cuda~cycle_subcounters~double+gmxapi+hwloc~intel_provided_gcc~ipo~mdrun_only+mpi+nblib~nosuffix~opencl+openmp~relaxed_double_precision+shared~sycl build_system=cmake build_type=Release generator=make openmp_max_threads=none arch=linux-rocky8-cascadelake/bbnrgri
--

whatis([[Name : gromacs]])
whatis([[Version : 2024.4]])
whatis([[Target : cascadelake]])
whatis([[Short description : GROMACS is a molecular dynamics package primarily designed for simulations of proteins, lipids and nucleic acids. It was originally developed in the Biophysical Chemistry department of University of Groningen, and is now maintained by contributors in universities and research centers across the world.]])

help([[Name   : gromacs]])
help([[Version: 2024.4]])
help([[Target : cascadelake]])
help()
help([[GROMACS is a molecular dynamics package primarily designed for
simulations of proteins, lipids and nucleic acids. It was originally
developed in the Biophysical Chemistry department of University of
Groningen, and is now maintained by contributors in universities and
research centers across the world. GROMACS is one of the fastest and
most popular software packages available and can run on CPUs as well as
GPUs. It is free, open source released under the GNU Lesser General
Public License. Before the version 4.6, GROMACS was released under the
GNU General Public License.]])


depends_on("fftw/3.3.10")
depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("hwloc/2.2.0")
depends_on("nvhpc/24.7")
depends_on("openmpi/5.0.5")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gromacs-2024.4-bbnrgr/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gromacs-2024.4-bbnrgr/lib64", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gromacs-2024.4-bbnrgr/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gromacs-2024.4-bbnrgr/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gromacs-2024.4-bbnrgr/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gromacs-2024.4-bbnrgr/lib64/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/gromacs-2024.4-bbnrgr/.", ":")
append_path("MANPATH", "", ":")

