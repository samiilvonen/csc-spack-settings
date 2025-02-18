-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-08-16 11:53:17.612683
--
-- openmpi@5.0.5%gcc@13.2.0~atomics~cuda~gpfs~internal-hwloc~internal-libevent+internal-pmix~java~legacylaunchers+lustre~memchecker~openshmem~orterunprefix+romio+rsh~static+vt+wrapper-rpath build_system=autotools fabrics=ucx romio-filesystem=lustre schedulers=slurm arch=linux-rhel8-cascadelake/tpby2mh
--

whatis([[Name : openmpi]])
whatis([[Version : 5.0.5]])
whatis([[Target : cascadelake]])
whatis([[Short description : An open source Message Passing Interface implementation.]])
whatis([[Configure options : --enable-shared --disable-silent-rules --disable-sphinx --disable-builtin-atomics --disable-static --enable-mpi1-compatibility --without-ucc --without-cma --without-verbs --without-hcoll --without-ofi --without-psm2 --without-psm --without-xpmem --without-knem --without-mxm --without-fca --with-ucx=/appl/opt/ucx/1.12.1 --without-cray-xpmem --with-slurm --without-loadleveler --without-tm --without-sge --without-lsf --without-alps --disable-memchecker --with-libevent=/appl/spack/syslibs --with-lustre=/appl/spack/syslibs --with-pmix=internal --with-zlib=/appl/spack/v022/install-tree/gcc-8.5.0/zlib-ng-2.1.6-2cikda --with-hwloc=/appl/spack/syslibs --disable-java --disable-mpi-java --with-io-romio-flags=--with-file-system=lustre --with-gpfs=no --without-cuda --enable-wrapper-rpath --disable-wrapper-runpath --with-wrapper-ldflags=-Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib/gcc/x86_64-pc-linux-gnu/13.2.0 -Wl,-rpath,/appl/spack/v022/install-tree/gcc-8.5.0/gcc-13.2.0-hgaeyz/lib64 CFLAGS=-DYY_BUF_SIZE=1048576]])

help([[Name   : openmpi]])
help([[Version: 5.0.5]])
help([[Target : cascadelake]])
help()
help([[An open source Message Passing Interface implementation. The Open MPI
Project is an open source Message Passing Interface implementation that
is developed and maintained by a consortium of academic, research, and
industry partners. Open MPI is therefore able to combine the expertise,
technologies, and resources from all across the High Performance
Computing community in order to build the best MPI library available.
Open MPI offers advantages for system and software vendors, application
developers and computer science researchers.]])

-- Services provided by the package
family("mpi")

-- Loading this module unlocks the path below unconditionally
prepend_path("MODULEPATH", "/appl/spack/v022/unsupported/linux-rhel8-x86_64/openmpi/5.0.5-tpby2mh/gcc/13.2.0")

-- Try to load variables into path to see if providers are there

-- Change MODULEPATH based on the result of the tests above

-- Set variables to notify the provider of the new services
setenv("LMOD_MPI_NAME", "openmpi")
setenv("LMOD_MPI_VERSION", "5.0.5-tpby2mh")

depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("hwloc/2.2.0")
depends_on("libevent/2.1.8")
depends_on("lustre/2.12.9")
depends_on("numactl/2.0.14")
depends_on("openssh/8.0p1")
depends_on("slurm/23.11.4")
depends_on("ucx/1.12.1")

prepend_path("CPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/include", ":")
prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/share/man", ":")
prepend_path("PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin", ":")
prepend_path("MANPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/.", ":")
setenv("MPICC", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpicc")
setenv("MPICXX", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpic++")
setenv("MPIF77", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpif77")
setenv("MPIF90", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpif90")
setenv("MPIFC", "/appl/spack/v022/install-tree/gcc-13.2.0/openmpi-5.0.5-tpby2m/bin/mpifort")
append_path("MANPATH", "", ":")

