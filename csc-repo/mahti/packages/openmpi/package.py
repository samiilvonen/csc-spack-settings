# Copyright 2013-2023 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


import itertools
import os
import re
import sys

import llnl.util.tty as tty

from spack.package import *


class Openmpi(AutotoolsPackage, CudaPackage):
    """An open source Message Passing Interface implementation.

    The Open MPI Project is an open source Message Passing Interface
    implementation that is developed and maintained by a consortium
    of academic, research, and industry partners. Open MPI is
    therefore able to combine the expertise, technologies, and
    resources from all across the High Performance Computing
    community in order to build the best MPI library available.
    Open MPI offers advantages for system and software vendors,
    application developers and computer science researchers.
    """

    homepage = "https://www.open-mpi.org"
    url = "https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.0.tar.bz2"
    list_url = "https://www.open-mpi.org/software/ompi/"
    git = "https://github.com/open-mpi/ompi.git"

    maintainers = ["hppritcha", "naughtont3"]

    executables = ["^ompi_info$"]

    version("main", branch="main", submodules=True)

    # Current
    version(
        "4.1.5", sha256="a640986bc257389dd379886fdae6264c8cfa56bc98b71ce3ae3dfbd8ce61dbe3"
    )  # libmpi.so.40.30.5

    # Still supported
    version(
        "4.1.4", sha256="92912e175fd1234368c8730c03f4996fe5942e7479bb1d10059405e7f2b3930d"
    )  # libmpi.so.40.30.4
    version(
        "4.1.3", sha256="3d81d04c54efb55d3871a465ffb098d8d72c1f48ff1cbaf2580eb058567c0a3b"
    )  # libmpi.so.40.30.3
    version(
        "4.1.2", sha256="9b78c7cf7fc32131c5cf43dd2ab9740149d9d87cadb2e2189f02685749a6b527"
    )  # libmpi.so.40.30.2
    version(
        "4.1.1", sha256="e24f7a778bd11a71ad0c14587a7f5b00e68a71aa5623e2157bafee3d44c07cda"
    )  # libmpi.so.40.30.1
    version(
        "4.1.0", sha256="73866fb77090819b6a8c85cb8539638d37d6877455825b74e289d647a39fd5b5"
    )  # libmpi.so.40.30.0
    version(
        "4.0.7", sha256="7d3ecc8389161eb721982c855f89c25dca289001577a01a439ae97ce872be997"
    )  # libmpi.so.40.20.7
    version(
        "4.0.6", sha256="94b7b59ae9860f3bd7b5f378a698713e7b957070fdff2c43453b6cbf8edb410c"
    )  # libmpi.so.40.20.6
    version(
        "4.0.5", sha256="c58f3863b61d944231077f344fe6b4b8fbb83f3d1bc93ab74640bf3e5acac009"
    )  # libmpi.so.40.20.5
    version(
        "4.0.4", sha256="47e24eb2223fe5d24438658958a313b6b7a55bb281563542e1afc9dec4a31ac4"
    )  # libmpi.so.40.20.4
    version(
        "4.0.3", sha256="1402feced8c3847b3ab8252165b90f7d1fa28c23b6b2ca4632b6e4971267fd03"
    )  # libmpi.so.40.20.3
    version(
        "4.0.2", sha256="900bf751be72eccf06de9d186f7b1c4b5c2fa9fa66458e53b77778dffdfe4057"
    )  # libmpi.so.40.20.2
    version(
        "4.0.1", sha256="cce7b6d20522849301727f81282201d609553103ac0b09162cf28d102efb9709"
    )  # libmpi.so.40.20.1
    version(
        "4.0.0", sha256="2f0b8a36cfeb7354b45dda3c5425ef8393c9b04115570b615213faaa3f97366b"
    )  # libmpi.so.40.20.0

    # Retired
    version(
        "3.1.6", sha256="50131d982ec2a516564d74d5616383178361c2f08fdd7d1202b80bdf66a0d279"
    )  # libmpi.so.40.10.4

    patch("fix-ucx-1.7.0-api-instability.patch", when="@4.0.0:4.0.2")

    patch("nvhpc-libtool.patch", when="%nvhpc@develop")
    patch("nvhpc-configure.patch", when="%nvhpc")

    patch("flux_ucx_pmix_fix.patch", when="@4.0.0:4.0.5")
    patch("flux_ucx_pmix_fix.patch", when="@4.1.0")

    # To fix performance regressions introduced while fixing a bug in older
    # gcc versions on x86_64, Refs. open-mpi/ompi#8603
    patch("opal_assembly_arch.patch", when="@4.0.0:4.0.5,4.1.0")

    variant(
        "fabrics",
        values=disjoint_sets(
            ("auto",),
            (
                "psm",
                "psm2",
                "verbs",
                "mxm",
                "ucx",
                "ofi",
                "fca",
                "hcoll",
                "xpmem",
                "cma",
                "knem",
            ),  # shared memory transports
        ).with_non_feature_values("auto", "none"),
        description="List of fabrics that are enabled; " "'auto' lets openmpi determine",
    )

    variant(
        "schedulers",
        values=disjoint_sets(
            ("auto",), ("alps", "lsf", "tm", "slurm", "sge", "loadleveler")
        ).with_non_feature_values("auto", "none"),
        description="List of schedulers for which support is enabled; "
        "'auto' lets openmpi determine",
    )

    # Additional support options
    variant("atomics", default=False, description="Enable built-in atomics")
    variant("java", default=False, when="@1.7.4:", description="Build Java support")
    variant("static", default=True, description="Build static libraries")
    variant("sqlite3", default=False, when="@1.7.3:1", description="Build SQLite3 support")
    variant("vt", default=True, description="Build VampirTrace support")
    variant(
        "thread_multiple",
        default=False,
        when="@1.5.4:2",
        description="Enable MPI_THREAD_MULTIPLE support",
    )
    variant(
        "pmi", default=False, when="@1.5.5:4 schedulers=slurm", description="Enable PMI support"
    )
    variant(
        "wrapper-rpath",
        default=True,
        when="@1.7.4:",
        description="Enable rpath support in the wrappers",
    )
    variant("cxx", default=False, when="@:4", description="Enable deprecated C++ MPI bindings")
    variant(
        "cxx_exceptions",
        default=False,
        when="@:4",
        description="Enable deprecated C++ exception support",
    )
    variant("gpfs", default=False, description="Enable GPFS support")
    variant(
        "singularity",
        default=False,
        when="@:4",
        description="Build deprecated support for the Singularity container",
    )
    variant("lustre", default=False, description="Lustre filesystem library support")
    variant("romio", default=True, description="Enable ROMIO support")
    # Adding support to build a debug version of OpenMPI that activates
    # Memchecker, as described here:
    #
    # https://www.open-mpi.org/faq/?category=debugging#memchecker_what
    #
    # This option degrades run-time support, and thus is disabled by default
    variant(
        "memchecker",
        default=False,
        description="Memchecker support for debugging [degrades performance]",
        sticky=True,
    )

    variant(
        "legacylaunchers",
        default=False,
        description="Do not remove mpirun/mpiexec when building with slurm",
    )
    # Variants to use internal packages
    variant("internal-hwloc", default=False, description="Use internal hwloc")
    # Include platform tuning parameters from mellanox
    variant("mlnx-platform", default=True, description="Use Mellanox platform parameters")

    provides("mpi")
    provides("mpi@:3.1", when="@2.0.0:")

    if sys.platform != "darwin":
        depends_on("numactl")

    depends_on("autoconf @2.69:", type="build", when="@main")
    depends_on("automake @1.13.4:", type="build", when="@main")
    depends_on("libtool @2.4.2:", type="build", when="@main")
    depends_on("m4", type="build", when="@main")

    depends_on("perl", type="build")
    depends_on("pkgconfig", type="build")

    depends_on("hwloc@2:", when="@4: ~internal-hwloc")
    # ompi@:3.0.0 doesn't support newer hwloc releases:
    # "configure: error: OMPI does not currently support hwloc v2 API"
    # Future ompi releases may support it, needs to be verified.
    # See #7483 for context.
    depends_on("hwloc@:1", when="@:3 ~internal-hwloc")

    depends_on("hwloc +cuda", when="+cuda ~internal-hwloc")
    depends_on("java", when="+java")
    depends_on("sqlite", when="+sqlite3")
    depends_on("zlib", when="@3:")
    depends_on("valgrind~mpi", when="+memchecker")
    # Singularity release 3 works better
    depends_on("singularity@3:", when="+singularity")
    depends_on("lustre", when="+lustre")

    depends_on("opa-psm2", when="fabrics=psm2")
    depends_on("rdma-core", when="fabrics=verbs")
    depends_on("mxm", when="fabrics=mxm")
    depends_on("binutils+libiberty", when="fabrics=mxm")
    with when("fabrics=ucx"):
        depends_on("ucx")
        depends_on("ucx +thread_multiple", when="+thread_multiple")
        depends_on("ucx +thread_multiple", when="@3.0.0:")
        depends_on("ucx@1.9.0:", when="@4.0.6:4.0")
        depends_on("ucx@1.9.0:", when="@4.1.1:4.1")
        depends_on("ucx@1.9.0:", when="@5.0.0:")
        depends_on("ucx +cuda+gdrcopy", when="+cuda")
    depends_on("libfabric", when="fabrics=ofi")
    depends_on("fca", when="fabrics=fca")
    depends_on("hcoll", when="fabrics=hcoll")
    depends_on("xpmem", when="fabrics=xpmem")
    depends_on("knem", when="fabrics=knem")

    depends_on("lsf", when="schedulers=lsf")
    depends_on("pbs", when="schedulers=tm")
    depends_on("slurm", when="schedulers=slurm")

    # PMIx is unavailable for @1, and required for @2:
    # OpenMPI @2: includes a vendored version:
    # depends_on('pmix@1.1.2', when='@2.1.6')
    # depends_on('pmix@3.2.3', when='@4.1.2')
    depends_on("pmix@1.0:1", when="@2.0:2")
    depends_on("pmix@3.2:", when="@4.0:4")
    depends_on("pmix@4.2:", when="@5.0:5")

    # Libevent is required when *vendored* PMIx is used
    depends_on("libevent@2:", when="@main")

    #depends_on("openssh", type="run", when="+rsh")

    conflicts("+cxx_exceptions", when="%nvhpc", msg="nvc does not ignore -fexceptions, but errors")

    # CUDA support was added in 1.7, and since the variant is part of the
    # parent package we must express as a conflict rather than a conditional
    # variant.
    conflicts("+cuda", when="@:1.6")
    # PSM2 support was added in 1.10.0
    conflicts("fabrics=psm2", when="@:1.8")
    # MXM support was added in 1.5.4
    conflicts("fabrics=mxm", when="@:1.5.3")
    # libfabric (OFI) support was added in 1.10.0
    conflicts("fabrics=ofi", when="@:1.8")
    # fca support was added in 1.5.0 and removed in 5.0.0
    conflicts("fabrics=fca", when="@:1.4,5:")
    # hcoll support was added in 1.7.3:
    conflicts("fabrics=hcoll", when="@:1.7.2")
    # xpmem support was added in 1.7
    conflicts("fabrics=xpmem", when="@:1.6")
    # cma support was added in 1.7
    conflicts("fabrics=cma", when="@:1.6")
    # knem support was added in 1.5
    conflicts("fabrics=knem", when="@:1.4")

    conflicts(
        "schedulers=slurm ~pmi",
        when="@1.5.4",
        msg="+pmi is required for openmpi to work with SLURM.",
    )
    conflicts(
        "schedulers=loadleveler",
        when="@3:",
        msg="The loadleveler scheduler is not supported with " "openmpi(>=3).",
    )

    # According to this comment on github:
    #
    # https://github.com/open-mpi/ompi/issues/4338#issuecomment-383982008
    #
    # adding --enable-static silently disables slurm support via pmi/pmi2
    # for versions older than 3.0.3,3.1.3,4.0.0
    # Presumably future versions after 11/2018 should support slurm+static
    conflicts("+static", when="schedulers=slurm @:3.0.2,3.1:3.1.2,4.0.0")

    filter_compiler_wrappers("openmpi/*-wrapper-data*", relative_root="share")

    extra_install_tests = "examples"

    @classmethod
    def determine_version(cls, exe):
        output = Executable(exe)(output=str, error=str)
        match = re.search(r"Open MPI: (\S+)", output)
        return Version(match.group(1)) if match else None

    @classmethod
    def determine_variants(cls, exes, version):
        results = []
        for exe in exes:
            variants = []
            output = Executable(exe)("-a", output=str, error=str)
            # Some of these options we have to find by hoping the
            # configure string is in the ompi_info output. While this
            # is usually true, it's not guaranteed.  For anything that
            # begins with --, we want to use the defaults as provided
            # by the openmpi package in the absense of any other info.

            # atomics
            if re.search(r"--enable-builtin-atomics", output):
                variants.append("+atomics")

            # java
            if version in spack.version.ver("1.7.4:"):
                match = re.search(r"\bJava bindings: (\S+)", output)
                if match and is_enabled(match.group(1)):
                    variants.append("+java")
                else:
                    variants.append("~java")

            # static
            if re.search(r"--enable-static", output):
                variants.append("+static")
            elif re.search(r"--disable-static", output):
                variants.append("~static")
            elif re.search(r"\bMCA (?:coll|oca|pml): monitoring", output):
                # Built multiple variants of openmpi and ran diff.
                # This seems to be the distinguishing feature.
                variants.append("~static")

            # sqlite
            if version in spack.version.ver("1.7.3:1"):
                if re.search(r"\bMCA db: sqlite", output):
                    variants.append("+sqlite3")
                else:
                    variants.append("~sqlite3")

            # vt
            if re.search(r"--enable-contrib-no-build=vt", output):
                variants.append("+vt")

            # thread_multiple
            if version in spack.version.ver("1.5.4:2"):
                match = re.search(r"MPI_THREAD_MULTIPLE: (\S+?),?", output)
                if match and is_enabled(match.group(1)):
                    variants.append("+thread_multiple")
                else:
                    variants.append("~thread_multiple")

            # cuda
            match = re.search(
                r'parameter "mpi_built_with_cuda_support" ' + r'\(current value: "(\S+)"', output
            )
            if match and is_enabled(match.group(1)):
                variants.append("+cuda")
            else:
                variants.append("~cuda")

            # wrapper-rpath
            if version in spack.version.ver("1.7.4:"):
                match = re.search(r"\bWrapper compiler rpath: (\S+)", output)
                if match and is_enabled(match.group(1)):
                    variants.append("+wrapper-rpath")
                else:
                    variants.append("~wrapper-rpath")

            # cxx
            if version in spack.version.ver(":4"):
                match = re.search(r"\bC\+\+ bindings: (\S+)", output)
                if match and match.group(1) == "yes":
                    variants.append("+cxx")
                else:
                    variants.append("~cxx")

            # cxx_exceptions
            if version in spack.version.ver(":4"):
                match = re.search(r"\bC\+\+ exceptions: (\S+)", output)
                if match and match.group(1) == "yes":
                    variants.append("+cxx_exceptions")
                else:
                    variants.append("~cxx_exceptions")

            # singularity
            if version in spack.version.ver(":4"):
                if re.search(r"--with-singularity", output):
                    variants.append("+singularity")

            # lustre
            if re.search(r"--with-lustre", output):
                variants.append("+lustre")

            # memchecker
            match = re.search(r"Memory debugging support: (\S+)", output)
            if match and is_enabled(match.group(1)):
                variants.append("+memchecker")
            else:
                variants.append("~memchecker")

            # pmi
            if version in spack.version.ver("1.5.5:4"):
                if re.search(r"\bMCA (?:ess|prrte): pmi", output):
                    variants.append("+pmi")
                else:
                    variants.append("~pmi")

            # fabrics
            fabrics = get_options_from_variant(cls, "fabrics")
            used_fabrics = []
            for fabric in fabrics:
                match = re.search(r"\bMCA (?:mtl|btl|pml): %s\b" % fabric, output)
                if match:
                    used_fabrics.append(fabric)
            if used_fabrics:
                variants.append("fabrics=" + ",".join(used_fabrics))

            # schedulers
            schedulers = get_options_from_variant(cls, "schedulers")
            used_schedulers = []
            for scheduler in schedulers:
                match = re.search(r"\bMCA (?:prrte|ras): %s\b" % scheduler, output)
                if match:
                    used_schedulers.append(scheduler)
            if used_schedulers:
                variants.append("schedulers=" + ",".join(used_schedulers))

            # Get the appropriate compiler
            match = re.search(r"\bC compiler absolute: (\S+)", output)
            if match:
                compiler = match.group(1)
                compiler_spec = get_spack_compiler_spec(compiler)
                if compiler_spec:
                    variants.append("%" + str(compiler_spec))
            results.append(" ".join(variants))
        return results

    def url_for_version(self, version):
        url = "https://download.open-mpi.org/release/open-mpi/v{0}/openmpi-{1}.tar.bz2"
        return url.format(version.up_to(2), version)

    @property
    def headers(self):
        hdrs = HeaderList(find(self.prefix.include, "mpi.h", recursive=False))
        if not hdrs:
            hdrs = HeaderList(find(self.prefix, "mpi.h", recursive=True))
        return hdrs or None

    @property
    def libs(self):
        query_parameters = self.spec.last_query.extra_parameters
        libraries = ["libmpi"]

        if "cxx" in query_parameters:
            libraries = ["libmpi_cxx"] + libraries

        return find_libraries(libraries, root=self.prefix, shared=True, recursive=True)

    def setup_run_environment(self, env):
        # Because MPI is both a runtime and a compiler, we have to setup the
        # compiler components as part of the run environment.
        env.set("MPICC", join_path(self.prefix.bin, "mpicc"))
        env.set("MPICXX", join_path(self.prefix.bin, "mpic++"))
        env.set("MPIF77", join_path(self.prefix.bin, "mpif77"))
        env.set("MPIF90", join_path(self.prefix.bin, "mpif90"))

    def setup_dependent_build_environment(self, env, dependent_spec):
        self.setup_run_environment(env)

        # Use the spack compiler wrappers under MPI
        env.set("OMPI_CC", spack_cc)
        env.set("OMPI_CXX", spack_cxx)
        env.set("OMPI_FC", spack_fc)
        env.set("OMPI_F77", spack_f77)

        # See https://www.open-mpi.org/faq/?category=building#installdirs
        for suffix in [
            "PREFIX",
            "EXEC_PREFIX",
            "BINDIR",
            "SBINDIR",
            "LIBEXECDIR",
            "DATAROOTDIR",
            "DATADIR",
            "SYSCONFDIR",
            "SHAREDSTATEDIR",
            "LOCALSTATEDIR",
            "LIBDIR",
            "INCLUDEDIR",
            "INFODIR",
            "MANDIR",
            "PKGDATADIR",
            "PKGLIBDIR",
            "PKGINCLUDEDIR",
        ]:
            env.unset("OPAL_%s" % suffix)

    def setup_dependent_package(self, module, dependent_spec):
        self.spec.mpicc = join_path(self.prefix.bin, "mpicc")
        self.spec.mpicxx = join_path(self.prefix.bin, "mpic++")
        self.spec.mpifc = join_path(self.prefix.bin, "mpif90")
        self.spec.mpif77 = join_path(self.prefix.bin, "mpif77")
        self.spec.mpicxx_shared_libs = [
            join_path(self.prefix.lib, "libmpi_cxx.{0}".format(dso_suffix)),
            join_path(self.prefix.lib, "libmpi.{0}".format(dso_suffix)),
        ]

    # Most of the following with_or_without methods might seem redundant
    # because Spack compiler wrapper adds the required -I and -L flags, which
    # is enough for the configure script to find them. However, we also need
    # the flags in Libtool (lib/*.la) and pkg-config (lib/pkgconfig/*.pc).
    # Therefore, we pass the prefixes explicitly.

    def with_or_without_psm2(self, activated):
        if not activated:
            return "--without-psm2"
        return "--with-psm2={0}".format(self.spec["opa-psm2"].prefix)

    def with_or_without_verbs(self, activated):
        # Up through version 1.6, this option was named --with-openib.
        # In version 1.7, it was renamed to be --with-verbs.
        opt = "verbs" if self.spec.satisfies("@1.7:") else "openib"
        if not activated:
            return "--without-{0}".format(opt)
        return "--with-{0}={1}".format(opt, self.spec["rdma-core"].prefix)

    def with_or_without_mxm(self, activated):
        if not activated:
            return "--without-mxm"
        return "--with-mxm={0}".format(self.spec["mxm"].prefix)

    def with_or_without_ucx(self, activated):
        if not activated:
            return "--without-ucx"
        return "--with-ucx={0}".format(self.spec["ucx"].prefix)

    def with_or_without_ofi(self, activated):
        # Up through version 3.0.3 this option was name --with-libfabric.
        # In version 3.0.4, the old name was deprecated in favor of --with-ofi.
        opt = "ofi" if self.spec.satisfies("@3.0.4:") else "libfabric"
        if not activated:
            return "--without-{0}".format(opt)
        return "--with-{0}={1}".format(opt, self.spec["libfabric"].prefix)

    def with_or_without_fca(self, activated):
        if not activated:
            return "--without-fca"
        return "--with-fca={0}".format(self.spec["fca"].prefix)

    def with_or_without_hcoll(self, activated):
        if not activated:
            return "--without-hcoll"
        return "--with-hcoll={0}".format(self.spec["hcoll"].prefix)

    def with_or_without_xpmem(self, activated):
        if not activated:
            return "--without-xpmem"
        return "--with-xpmem={0}".format(self.spec["xpmem"].prefix)

    def with_or_without_knem(self, activated):
        if not activated:
            return "--without-knem"
        return "--with-knem={0}".format(self.spec["knem"].prefix)

    def with_or_without_lsf(self, activated):
        if not activated:
            return "--without-lsf"
        return "--with-lsf={0}".format(self.spec["lsf"].prefix)

    def with_or_without_tm(self, activated):
        if not activated:
            return "--without-tm"
        return "--with-tm={0}".format(self.spec["pbs"].prefix)

    @run_before("autoreconf")
    def die_without_fortran(self):
        # Until we can pass variants such as +fortran through virtual
        # dependencies depends_on('mpi'), require Fortran compiler to
        # avoid delayed build errors in dependents.
        if (self.compiler.f77 is None) or (self.compiler.fc is None):
            raise InstallError("OpenMPI requires both C and Fortran compilers!")

    @when("@main")
    def autoreconf(self, spec, prefix):
        perl = which("perl")
        perl("autogen.pl")

    def configure_args(self):
        spec = self.spec
        config_args = ["--enable-shared", "--disable-silent-rules"]

        # Mellanox parameters
        if "+mlnx-platform" in spec:
            config_args.extend([
                "--with-platform=contrib/platform/mellanox/optimized"
            ])

        # All rpath flags should be appended with self.compiler.cc_rpath_arg.
        # Later, we might need to update share/openmpi/mpic++-wrapper-data.txt
        # and mpifort-wrapper-data.txt (see filter_rpaths()).
        wrapper_ldflags = []

        config_args.extend(self.enable_or_disable("builtin-atomics", variant="atomics"))

        if spec.satisfies("+pmi"):
            config_args.append("--with-pmi={0}".format(spec["slurm"].prefix))
        else:
            config_args.extend(self.with_or_without("pmi"))

        config_args.extend(self.enable_or_disable("static"))

        if spec.satisfies("@4.0.0:4.0.2"):
            # uct btl doesn't work with some UCX versions so just disable
            config_args.append("--enable-mca-no-build=btl-uct")

        # some scientific packages ignore deprecated/remove symbols. Re-enable
        # them for now, for discussion see
        # https://github.com/open-mpi/ompi/issues/6114#issuecomment-446279495
        if spec.satisfies("@4.0.1:"):
            config_args.append("--enable-mpi1-compatibility")

        # Fabrics
        if "fabrics=auto" not in spec:
            config_args.extend(self.with_or_without("fabrics"))

        if spec.satisfies("@2.0.0:"):
            if "fabrics=xpmem platform=cray" in spec:
                config_args.append("--with-cray-xpmem")
            else:
                config_args.append("--without-cray-xpmem")

        # Schedulers
        if "schedulers=auto" not in spec:
            config_args.extend(self.with_or_without("schedulers"))

        config_args.extend(self.enable_or_disable("memchecker"))
        if spec.satisfies("+memchecker"):
            config_args.extend(["--enable-debug"])

        # Package dependencies
        for dep in ["libevent", "lustre", "pmix", "singularity", "valgrind", "zlib"]:
            if "^" + dep in spec:
                config_args.append("--with-{0}={1}".format(dep, spec[dep].prefix))

        # Hwloc support
        if "^hwloc" in spec:
            config_args.append("--with-hwloc=" + spec["hwloc"].prefix)
        # Java support
        if "+java" in spec:
            config_args.extend(
                ["--enable-java", "--enable-mpi-java", "--with-jdk-dir=" + spec["java"].home]
            )
        elif spec.satisfies("@1.7.4:"):
            config_args.extend(["--disable-java", "--disable-mpi-java"])

        if "~romio" in spec:
            config_args.append("--disable-io-romio")

        if "+gpfs" in spec:
            config_args.append("--with-gpfs")
        else:
            config_args.append("--with-gpfs=no")

        # SQLite3 support
        config_args.extend(self.with_or_without("sqlite3"))

        # VampirTrace support
        if spec.satisfies("@1.3:1"):
            if "~vt" in spec:
                config_args.append("--enable-contrib-no-build=vt")

        # Multithreading support
        config_args.extend(
            self.enable_or_disable("mpi-thread-multiple", variant="thread_multiple")
        )

        # CUDA support
        # See https://www.open-mpi.org/faq/?category=buildcuda
        if "+cuda" in spec:
            # OpenMPI dynamically loads libcuda.so, requires dlopen
            config_args.append("--enable-dlopen")
            # Searches for header files in DIR/include
            config_args.append("--with-cuda={0}".format(spec["cuda"].prefix))
            if spec.satisfies("@1.7:1.7.2"):
                # This option was removed from later versions
                config_args.append(
                    "--with-cuda-libdir={0}".format(spec["cuda"].libs.directories[0])
                )
            if spec.satisfies("@5.0:"):
                # And then it returned
                config_args.append(
                    "--with-cuda-libdir={0}".format(spec["cuda"].libs.directories[0] + "/stubs")
                )
            if spec.satisfies("@1.7.2"):
                # There was a bug in 1.7.2 when --enable-static is used
                config_args.append("--enable-mca-no-build=pml-bfo")
            if spec.satisfies("%pgi^cuda@7.0:7"):
                # OpenMPI has problems with CUDA 7 and PGI
                config_args.append("--with-wrapper-cflags=-D__LP64__ -ta:tesla")
                if spec.satisfies("%pgi@:15.8"):
                    # With PGI 15.9 and later compilers, the
                    # CFLAGS=-D__LP64__ is no longer needed.
                    config_args.append("CFLAGS=-D__LP64__")
        elif spec.satisfies("@1.7:"):
            config_args.append("--without-cuda")

        if spec.satisfies("%nvhpc@:20.11"):
            # Workaround compiler issues
            config_args.append("CFLAGS=-O1")

        if "+wrapper-rpath" in spec:
            config_args.append("--enable-wrapper-rpath")

            # Disable new dynamic tags in the wrapper (--disable-new-dtags)
            # In the newer versions this can be done with a configure option
            # (for older versions, we rely on filter_compiler_wrappers() and
            # filter_pc_files()):
            if spec.satisfies("@3.0.5:"):
                config_args.append("--disable-wrapper-runpath")

            # Add extra_rpaths and implicit_rpaths into the wrappers.
            wrapper_ldflags.extend(
                [
                    self.compiler.cc_rpath_arg + path
                    for path in itertools.chain(
                        self.compiler.extra_rpaths, self.compiler.implicit_rpaths()
                    )
                ]
            )
        else:
            config_args.append("--disable-wrapper-rpath")
            config_args.append("--disable-wrapper-runpath")

        config_args.extend(self.enable_or_disable("mpi-cxx", variant="cxx"))
        config_args.extend(self.enable_or_disable("cxx-exceptions", variant="cxx_exceptions"))

        if wrapper_ldflags:
            config_args.append("--with-wrapper-ldflags={0}".format(" ".join(wrapper_ldflags)))

        return config_args

    @run_after("install", when="+wrapper-rpath")
    def filter_rpaths(self):
        def filter_lang_rpaths(lang_tokens, rpath_arg):
            if self.compiler.cc_rpath_arg == rpath_arg:
                return

            files = find(
                self.spec.prefix.share.openmpi,
                ["*{0}-wrapper-data*".format(t) for t in lang_tokens],
            )
            files.extend(
                find(
                    self.spec.prefix.lib.pkgconfig, ["ompi-{0}.pc".format(t) for t in lang_tokens]
                )
            )

            x = FileFilter(*[f for f in files if not os.path.islink(f)])

            # Replace self.compiler.cc_rpath_arg, which have been added as
            # '--with-wrapper-ldflags', with rpath_arg in the respective
            # language-specific wrappers and pkg-config files.
            x.filter(self.compiler.cc_rpath_arg, rpath_arg, string=True, backup=False)

            if self.spec.satisfies("@:1.10.3,2:2.1.1"):
                # Replace Libtool-style RPATH prefixes '-Wl,-rpath -Wl,' with
                # rpath_arg for old version of OpenMPI, which assumed that CXX
                # and FC had the same prefixes as CC.
                x.filter("-Wl,-rpath -Wl,", rpath_arg, string=True, backup=False)

        filter_lang_rpaths(["c++", "CC", "cxx"], self.compiler.cxx_rpath_arg)
        filter_lang_rpaths(["fort", "f77", "f90"], self.compiler.fc_rpath_arg)

    @run_after("install", when="@:3.0.4+wrapper-rpath")
    def filter_pc_files(self):
        files = find(self.spec.prefix.lib.pkgconfig, "*.pc")
        x = FileFilter(*[f for f in files if not os.path.islink(f)])

        # Remove this linking flag if present (it turns RPATH into RUNPATH)
        x.filter(
            "{0}--enable-new-dtags".format(self.compiler.linker_arg), "", string=True, backup=False
        )

        # NAG compiler is usually mixed with GCC, which has a different
        # prefix for linker arguments.
        if self.compiler.name == "nag":
            x.filter("-Wl,--enable-new-dtags", "", string=True, backup=False)

    @run_after("install")
    def delete_mpirun_mpiexec(self):
        # The preferred way to run an application when Slurm is the
        # scheduler is to let Slurm manage process spawning via PMI.
        #
        # Deleting the links to orterun avoids users running their
        # applications via mpirun or mpiexec, and leaves srun as the
        # only sensible choice (orterun is still present, but normal
        # users don't know about that).
        if "@1.6: ~legacylaunchers schedulers=slurm" in self.spec:
            exe_list = [
                self.prefix.bin.mpirun,
                self.prefix.bin.mpiexec,
                self.prefix.bin.shmemrun,
                self.prefix.bin.oshrun,
            ]
            script_stub = join_path(os.path.dirname(__file__), "nolegacylaunchers.sh")
            for exe in exe_list:
                try:
                    os.remove(exe)
                except OSError:
                    tty.debug("File not present: " + exe)
                else:
                    copy(script_stub, exe)

    @run_after("install")
    def setup_install_tests(self):
        """
        Copy the example files after the package is installed to an
        install test subdirectory for use during `spack test run`.
        """
        self.cache_extra_test_sources(self.extra_install_tests)

    def _test_bin_ops(self):
        info = ([], ["Ident string: {0}".format(self.spec.version), "MCA"], 0)

        ls = (["-n", "1", "ls", ".."], ["openmpi-{0}".format(self.spec.version)], 0)

        checks = {
            "mpirun": ls,
            "ompi_info": info,
            "oshmem_info": info,
            "oshrun": ls,
            "shmemrun": ls,
        }

        for binary in checks:
            options, expected, status = checks[binary]
            exe = join_path(self.prefix.bin, binary)
            reason = "test: checking {0} output".format(binary)
            self.run_test(
                exe, options, expected, status, installed=True, purpose=reason, skip_missing=True
            )

    def _test_check_versions(self):
        comp_vers = str(self.spec.compiler.version)
        spec_vers = str(self.spec.version)
        checks = {
            # Binaries available in at least versions 2.0.0 through 4.0.3
            "mpiCC": comp_vers,
            "mpic++": comp_vers,
            "mpicc": comp_vers,
            "mpicxx": comp_vers,
            "mpiexec": spec_vers,
            "mpif77": comp_vers,
            "mpif90": comp_vers,
            "mpifort": comp_vers,
            "mpirun": spec_vers,
            "ompi_info": spec_vers,
            "ortecc": comp_vers,
            "orterun": spec_vers,
            # Binaries available in versions 2.0.0 through 2.1.6
            "ompi-submit": spec_vers,
            "orte-submit": spec_vers,
            # Binaries available in versions 2.0.0 through 3.1.5
            "ompi-dvm": spec_vers,
            "orte-dvm": spec_vers,
            "oshcc": comp_vers,
            "oshfort": comp_vers,
            "oshmem_info": spec_vers,
            "oshrun": spec_vers,
            "shmemcc": comp_vers,
            "shmemfort": comp_vers,
            "shmemrun": spec_vers,
            # Binary available in version 3.1.0 through 3.1.5
            "prun": spec_vers,
            # Binaries available in versions 3.0.0 through 3.1.5
            "oshCC": comp_vers,
            "oshc++": comp_vers,
            "oshcxx": comp_vers,
            "shmemCC": comp_vers,
            "shmemc++": comp_vers,
            "shmemcxx": comp_vers,
        }

        for binary in checks:
            expected = checks[binary]
            purpose = "test: ensuring version of {0} is {1}".format(binary, expected)
            exe = join_path(self.prefix.bin, binary)
            self.run_test(
                exe, "--version", expected, installed=True, purpose=purpose, skip_missing=True
            )

    @property
    def _cached_tests_work_dir(self):
        """The working directory for cached test sources."""
        return join_path(self.test_suite.current_test_cache_dir, self.extra_install_tests)

    def _test_examples(self):
        """Run test examples copied from source at build-time."""
        # Build the copied, cached test examples
        self.run_test(
            "make",
            ["all"],
            [],
            purpose="test: building cached test examples",
            work_dir=self._cached_tests_work_dir,
        )

        # Run examples with known, simple-to-verify results
        have_spml = self.spec.satisfies("@2:2.1.6")

        hello_world = (["Hello, world", "I am", "0 of", "1"], 0)

        max_red = (["0/1 dst = 0 1 2"], 0)

        missing_spml = (["No available spml components"], 1)

        no_out = ([""], 0)

        ring_out = (["1 processes in ring", "0 exiting"], 0)

        strided = (["not in valid range"], 255)

        checks = {
            "hello_c": hello_world,
            "hello_cxx": hello_world,
            "hello_mpifh": hello_world,
            "hello_oshmem": hello_world if have_spml else missing_spml,
            "hello_oshmemcxx": hello_world if have_spml else missing_spml,
            "hello_oshmemfh": hello_world if have_spml else missing_spml,
            "hello_usempi": hello_world,
            "hello_usempif08": hello_world,
            "oshmem_circular_shift": ring_out if have_spml else missing_spml,
            "oshmem_max_reduction": max_red if have_spml else missing_spml,
            "oshmem_shmalloc": no_out if have_spml else missing_spml,
            "oshmem_strided_puts": strided if have_spml else missing_spml,
            "oshmem_symmetric_data": no_out if have_spml else missing_spml,
            "ring_c": ring_out,
            "ring_cxx": ring_out,
            "ring_mpifh": ring_out,
            "ring_oshmem": ring_out if have_spml else missing_spml,
            "ring_oshmemfh": ring_out if have_spml else missing_spml,
            "ring_usempi": ring_out,
            "ring_usempif08": ring_out,
        }

        for exe in checks:
            expected, status = checks[exe]
            reason = "test: checking {0} example output and status ({1})".format(exe, status)
            self.run_test(
                exe,
                [],
                expected,
                status,
                installed=False,
                purpose=reason,
                skip_missing=True,
                work_dir=self._cached_tests_work_dir,
            )

    def test(self):
        """Perform stand-alone/smoke tests on the installed package."""
        # Simple version check tests on selected installed binaries
        self._test_check_versions()

        # Test the operation of selected executables
        self._test_bin_ops()

        # Test example programs pulled from the build
        self._test_examples()


def get_spack_compiler_spec(compiler):
    spack_compilers = spack.compilers.find_compilers([os.path.dirname(compiler)])
    actual_compiler = None
    # check if the compiler actually matches the one we want
    for spack_compiler in spack_compilers:
        if spack_compiler.cc and spack_compiler.cc == compiler:
            actual_compiler = spack_compiler
            break
    return actual_compiler.spec if actual_compiler else None


def is_enabled(text):
    if text in set(["t", "true", "enabled", "yes", "1"]):
        return True
    return False


# This code gets all the fabric names from the variants list
# Idea taken from the AutotoolsPackage source.
def get_options_from_variant(self, name):
    values = self.variants[name][0].values
    if getattr(values, "feature_values", None):
        values = values.feature_values
    return values
