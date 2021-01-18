# Copyright 2013-2020 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


import os
import sys
import llnl.util.tty as tty


def _verbs_dir():
    """Try to find the directory where the OpenFabrics verbs package is
    installed. Return None if not found.
    """
    try:
        # Try to locate Verbs by looking for a utility in the path
        ibv_devices = which("ibv_devices")
        # Run it (silently) to ensure it works
        ibv_devices(output=str, error=str)
        # Get path to executable
        path = ibv_devices.exe[0]
        # Remove executable name and "bin" directory
        path = os.path.dirname(path)
        path = os.path.dirname(path)
        # There's usually no "/include" on Unix; use "/usr/include" instead
        if path == "/":
            path = "/usr"
        return path
    except TypeError:
        return None
    except ProcessError:
        return None


def _mxm_dir():
    """Look for default directory where the Mellanox package is
    installed. Return None if not found.
    """
    # Only using default directory; make this more flexible in the future
    path = "/opt/mellanox/mxm"
    if os.path.isdir(path):
        return path
    else:
        return None


def _tm_dir():
    """Look for default directory where the PBS/TM package is
    installed. Return None if not found.
    """
    # /opt/pbs from PBS 18+; make this more flexible in the future
    paths_list = ("/opt/pbs", )
    for path in paths_list:
        if os.path.isdir(path) and os.path.isfile(path + "/include/tm.h"):
            return path
    return None


class Openmpi(AutotoolsPackage):
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

    homepage = "http://www.open-mpi.org"
    url = "https://www.open-mpi.org/software/ompi/v4.0/downloads/openmpi-4.0.0.tar.bz2"
    list_url = "http://www.open-mpi.org/software/ompi/"
    git = "https://github.com/open-mpi/ompi.git"

    maintainers = ['hppritcha']
    
    version('develop', branch='master')

    # Mellanox version
    version('4.0.2a1-mlnx', commit='fbd6798bf8')

    # Current
    version('4.0.2', preferred=True, sha256='900bf751be72eccf06de9d186f7b1c4b5c2fa9fa66458e53b77778dffdfe4057') # libmpi.so.40.20.2

    # Still supported
    version('4.0.1', sha256='cce7b6d20522849301727f81282201d609553103ac0b09162cf28d102efb9709')  # libmpi.so.40.20.1
    version('4.0.0', sha256='2f0b8a36cfeb7354b45dda3c5425ef8393c9b04115570b615213faaa3f97366b')  # libmpi.so.40.20.0
    version('3.1.5', sha256='fbf0075b4579685eec8d56d34d4d9c963e6667825548554f5bf308610af72133')  # libmpi.so.40.10.4
    version('3.1.4', sha256='17a69e0054db530c7dc119f75bd07d079efa147cf94bf27e590905864fe379d6')  # libmpi.so.40.10.4
    version('3.1.3', sha256='8be04307c00f51401d3fb9d837321781ea7c79f2a5a4a2e5d4eaedc874087ab6')  # libmpi.so.40.10.3
    version('3.1.2', sha256='c654ed847f34a278c52a15c98add40402b4a90f0c540779f1ae6c489af8a76c5')  # libmpi.so.40.10.2
    version('3.1.1', sha256='3f11b648dd18a8b878d057e9777f2c43bf78297751ad77ae2cef6db0fe80c77c')  # libmpi.so.40.10.1
    version('3.1.0', sha256='b25c044124cc859c0b4e6e825574f9439a51683af1950f6acda1951f5ccdf06c')  # libmpi.so.40.10.0
    version('3.0.5', sha256='f8976b95f305efc435aa70f906b82d50e335e34cffdbf5d78118a507b1c6efe8')  # libmpi.so.40.00.5
    version('3.0.4', sha256='2ff4db1d3e1860785295ab95b03a2c0f23420cda7c1ae845c419401508a3c7b5')  # libmpi.so.40.00.5
    version('3.0.3', sha256='fb228e42893fe6a912841a94cd8a0c06c517701ae505b73072409218a12cf066')  # libmpi.so.40.00.4
    version('3.0.2', sha256='d2eea2af48c1076c53cabac0a1f12272d7470729c4e1cb8b9c2ccd1985b2fb06')  # libmpi.so.40.00.2
    version('3.0.1', sha256='663450d1ee7838b03644507e8a76edfb1fba23e601e9e0b5b2a738e54acd785d')  # libmpi.so.40.00.1
    version('3.0.0', sha256='f699bff21db0125d8cccfe79518b77641cd83628725a1e1ed3e45633496a82d7')  # libmpi.so.40.00.0

    version('2.1.6', sha256='98b8e1b8597bbec586a0da79fcd54a405388190247aa04d48e8c40944d4ca86e')  # libmpi.20.20.10.3

    patch('ucx16.patch', when="@4.0.0:4.0.1")
    patch('fix-ucx-1.7.0-api-instability.patch', when='@4.0.0:4.0.3')

    # Fixed in 3.0.3 and 3.1.3
    patch('btl_vader.patch', when='@3.0.1:3.0.2')
    patch('btl_vader.patch', when='@3.1.0:3.1.2')

    variant(
        'fabrics',
        values=disjoint_sets(
            ('auto',), ('psm', 'psm2', 'verbs', 'mxm', 'ucx', 'libfabric')
        ).with_non_feature_values('auto', 'none'),
        description="List of fabrics that are enabled; "
        "'auto' lets openmpi determine",
    )

    variant(
        'schedulers',
        values=disjoint_sets(
            ('auto',), ('alps', 'lsf', 'tm', 'slurm', 'sge', 'loadleveler')
        ).with_non_feature_values('auto', 'none'),
        description="List of schedulers for which support is enabled; "
        "'auto' lets openmpi determine",
    )

    variant(
        'extensions',
        values=disjoint_sets(
            ('none',), ('affinity', 'cuda', 'cr')
        ).with_non_feature_values('none'),
        description='List of MPI extensions which are enabled',
    )

    # Additional support options
    variant('java', default=False, description='Build Java support')
    variant('sqlite3', default=False, description='Build SQLite3 support')
    variant('vt', default=True, description='Build VampirTrace support')
    variant('thread_multiple', default=False,
            description='Enable MPI_THREAD_MULTIPLE support')
    variant('cuda', default=False, description='Enable CUDA support')
    variant('pmix', default=True, description='Enable PMIx support')
    variant('cxx_exceptions', default=True, description='Enable C++ Exception support')
    variant('sys_libevent', default=True, description='Enable system version of libevent')
    # Adding support to build a debug version of OpenMPI that activates
    # Memchecker, as described here:
    #
    # https://www.open-mpi.org/faq/?category=debugging#memchecker_what
    #
    # This option degrades run-time support, and thus is disabled by default
    variant(
        'memchecker',
        default=False,
        description='Memchecker support for debugging [degrades performance]'
    )

    variant(
        'legacylaunchers',
        default=False,
        description='Do not remove mpirun/mpiexec when building with slurm'
    )

    provides('mpi')
    provides('mpi@:2.2', when='@1.6.5')
    provides('mpi@:3.0', when='@1.7.5:')
    provides('mpi@:3.1', when='@2.0.0:')

    if sys.platform != 'darwin':
        depends_on('numactl')

    depends_on('autoconf', type='build', when='@develop')
    depends_on('automake', type='build', when='@develop')
    depends_on('libtool',  type='build', when='@develop')
    depends_on('m4',       type='build', when='@develop')
    depends_on('perl',     type='build', when='@develop')

    depends_on('hwloc')
    # ompi@:3.0.0 doesn't support newer hwloc releases:
    # "configure: error: OMPI does not currently support hwloc v2 API"
    # Future ompi releases may support it, needs to be verified.
    # See #7483 for context.
    depends_on('hwloc@:1.999', when='@:3.9.999')

    depends_on('hwloc +cuda', when='+cuda')
    depends_on('java', when='+java')
    depends_on('sqlite', when='+sqlite3@:1.11')
    depends_on('zlib', when='@3.0.0:')
    depends_on('valgrind~mpi', when='+memchecker')
    depends_on('ucx', when='fabrics=ucx')
    depends_on('ucx +thread_multiple', when='fabrics=ucx +thread_multiple')
    depends_on('ucx +thread_multiple', when='@3.0.0: fabrics=ucx')
    depends_on('libfabric', when='fabrics=libfabric')
    depends_on('slurm', when='schedulers=slurm')
    depends_on('binutils+libiberty', when='fabrics=mxm')

    conflicts('+cuda', when='@:1.6')  # CUDA support was added in 1.7
    conflicts('fabrics=psm2', when='@:1.8')  # PSM2 support was added in 1.10.0
    conflicts('fabrics=mxm', when='@:1.5.3')  # MXM support was added in 1.5.4
    conflicts('+pmix', when='@:2.0.0')  # Check this and the scheduler part!
    conflicts('schedulers=slurm ~pmix', when='@2.0.0:',
              msg='+pmix is required for openmpi to work with SLURM.')

    filter_compiler_wrappers('openmpi/*-wrapper-data*', relative_root='share')
    conflicts('fabrics=libfabric', when='@:1.8')  # libfabric support was added in 1.10.0
    # It may be worth considering making libfabric an exclusive fabrics choice

    def _fabrics_activation(self, option_value):
        if 'ucx' in option_value:
            return self.spec['ucx'].prefix

    def url_for_version(self, version):
        url = "http://www.open-mpi.org/software/ompi/v{0}/downloads/openmpi-{1}.tar.bz2"
        return url.format(version.up_to(2), version)

    @property
    def headers(self):
        hdrs = HeaderList(find(self.prefix.include, 'mpi.h', recursive=False))
        if not hdrs:
            hdrs = HeaderList(find(self.prefix, 'mpi.h', recursive=True))
        return hdrs or None

    @property
    def libs(self):
        query_parameters = self.spec.last_query.extra_parameters
        libraries = ['libmpi']

        if 'cxx' in query_parameters:
            libraries = ['libmpi_cxx'] + libraries

        return find_libraries(
            libraries, root=self.prefix, shared=True, recursive=True
        )

    def setup_dependent_build_environment(self, env, dependent_spec):
        env.set('MPICC',  join_path(self.prefix.bin, 'mpicc'))
        env.set('MPICXX', join_path(self.prefix.bin, 'mpic++'))
        env.set('MPIF77', join_path(self.prefix.bin, 'mpif77'))
        env.set('MPIF90', join_path(self.prefix.bin, 'mpif90'))

        env.set('OMPI_CC', spack_cc)
        env.set('OMPI_CXX', spack_cxx)
        env.set('OMPI_FC', spack_fc)
        env.set('OMPI_F77', spack_f77)

    def setup_dependent_package(self, module, dependent_spec):
        self.spec.mpicc = join_path(self.prefix.bin, 'mpicc')
        self.spec.mpicxx = join_path(self.prefix.bin, 'mpic++')
        self.spec.mpifc = join_path(self.prefix.bin, 'mpif90')
        self.spec.mpif77 = join_path(self.prefix.bin, 'mpif77')
        self.spec.mpicxx_shared_libs = [
            join_path(self.prefix.lib, 'libmpi_cxx.{0}'.format(dso_suffix)),
            join_path(self.prefix.lib, 'libmpi.{0}'.format(dso_suffix))
        ]

    def with_or_without_verbs(self, activated):
        # Up through version 1.6, this option was previously named
        # --with-openib
        opt = 'openib'
        # In version 1.7, it was renamed to be --with-verbs
        if self.spec.satisfies('@1.7:'):
            opt = 'verbs'
        # If the option has not been activated return
        # --without-openib or --without-verbs
        if not activated:
            return '--without-{0}'.format(opt)
        line = '--with-{0}'.format(opt)
        path = _verbs_dir()
        if (path is not None) and (path not in ('/usr', '/usr/local')):
            line += '={0}'.format(path)
        return line

    def with_or_without_mxm(self, activated):
        opt = 'mxm'
        # If the option has not been activated return --without-mxm
        if not activated:
            return '--without-{0}'.format(opt)
        line = '--with-{0}'.format(opt)
        path = _mxm_dir()
        if path is not None:
            line += '={0}'.format(path)
        return line

    def with_or_without_tm(self, activated):
        opt = 'tm'
        # If the option has not been activated return --without-tm
        if not activated:
            return '--without-{0}'.format(opt)
        line = '--with-{0}'.format(opt)
        path = _tm_dir()
        if path is not None:
            line += '={0}'.format(path)
        return line

    @run_before('autoreconf')
    def die_without_fortran(self):
        # Until we can pass variants such as +fortran through virtual
        # dependencies depends_on('mpi'), require Fortran compiler to
        # avoid delayed build errors in dependents.
        if (self.compiler.f77 is None) or (self.compiler.fc is None):
            raise InstallError(
                'OpenMPI requires both C and Fortran compilers!'
            )

    @when('@develop')
    def autoreconf(self, spec, prefix):
        perl = which('perl')
        perl('autogen.pl')

    @when('@4.0.2a1-mlnx')
    def autoreconf(self, spec, prefix):
        perl = which('perl')
        perl('autogen.pl')

    def configure_args(self):
        spec = self.spec
        # This does not currently work with mlnx, should use knem instead
        config_args = [
            '--without-xpmem',
        ]

        # More verbose compile output for problem tracking
        config_args.extend([
            '--disable-silent-rules'
        ])

        # Add extra_rpaths dirs from compilers.yaml into link wrapper
        rpaths = [self.compiler.cc_rpath_arg + path
                  for path in self.compiler.extra_rpaths]
        config_args.extend([
            '--with-wrapper-ldflags={0}'.format(' '.join(rpaths))
        ])

        # According to this comment on github:
        #
        # https://github.com/open-mpi/ompi/issues/4338#issuecomment-383982008
        #
        # adding --enable-static silently disables slurm support via pmi/pmi2
        # for versions older than 3.0.3,3.1.3,4.0.0
        # Presumably future versions after 11/2018 should support slurm+static
        if spec.satisfies('schedulers=slurm'):
            config_args.append('--with-pmix={0}'.format(spec['slurm'].prefix))
            if spec.satisfies('@3.1.3:') or spec.satisfies('@3.0.3'):
                config_args.append('--enable-static')
        else:
            config_args.append('--enable-static')
            config_args.extend(self.with_or_without('pmix'))

        #if spec.satisfies('@2.0:'):
            # for Open-MPI 2.0:, C++ bindings are disabled by default.
        #    config_args.extend(['--enable-mpi-cxx'])

        if spec.satisfies('@3.0.0:', strict=True):
            config_args.append('--with-zlib={0}'.format(spec['zlib'].prefix))

        # some scientific packages ignore deprecated/remove symbols. Re-enable
        # them for now, for discussion see
        # https://github.com/open-mpi/ompi/issues/6114#issuecomment-446279495
        if spec.satisfies('@4.0.1:'):
            config_args.append('--enable-mpi1-compatibility')

        # Fabrics
        if 'fabrics=auto' not in spec:
            config_args.extend(self.with_or_without('fabrics'))
        # The wrappers fail to automatically link libfabric. This will cause
        # undefined references unless we add the appropriate flags.
        if 'fabrics=libfabric' in spec:
            config_args.append('--with-wrapper-ldflags=-L{0} -Wl,-rpath={0}'
                               .format(spec['libfabric'].prefix.lib))
            config_args.append('--with-wrapper-libs=-lfabric')

        # Schedulers
        if 'schedulers=auto' not in spec:
            config_args.extend(self.with_or_without('schedulers'))

        # Extensions
        if 'extensions=none' not in spec:
            config_args.append('--enable-mpi-ext={0}'.format(','.join(spec.variants['extensions'].value)))

        config_args.extend(self.enable_or_disable('memchecker'))
        if spec.satisfies('+memchecker', strict=True):
            config_args.extend([
                '--enable-debug',
                '--with-valgrind={0}'.format(spec['valgrind'].prefix),
            ])

        # RPM version of libevent
        if spec.satisfies('+sys_libevent'):
            config_args.append('--with-libevent=/usr')

        # Hwloc support
        if spec.satisfies('@1.5.2:'):
            config_args.append('--with-hwloc={0}'.format(spec['hwloc'].prefix))
        # Java support
        if spec.satisfies('@1.7.4:'):
            if '+java' in spec:
                config_args.extend([
                    '--enable-java',
                    '--enable-mpi-java',
                    '--with-jdk-dir={0}'.format(spec['java'].home)
                ])
            else:
                config_args.extend([
                    '--disable-java',
                    '--disable-mpi-java'
                ])

        # SQLite3 support
        if spec.satisfies('@1.7.3:1.999'):
            if '+sqlite3' in spec:
                config_args.append('--with-sqlite3')
            else:
                config_args.append('--without-sqlite3')

        # VampirTrace support
        if spec.satisfies('@1.3:1.999'):
            if '+vt' not in spec:
                config_args.append('--enable-contrib-no-build=vt')

        # Multithreading support
        if spec.satisfies('@1.5.4:2.999'):
            if '+thread_multiple' in spec:
                config_args.append('--enable-mpi-thread-multiple')
            else:
                config_args.append('--disable-mpi-thread-multiple')

        # CUDA support
        # See https://www.open-mpi.org/faq/?category=buildcuda
        if spec.satisfies('@1.7:'):
            if '+cuda' in spec:
                # OpenMPI dynamically loads libcuda.so, requires dlopen
                config_args.append('--enable-dlopen')
                # Searches for header files in DIR/include
                config_args.append('--with-cuda={0}'.format(
                    spec['cuda'].prefix))
                if spec.satisfies('@1.7:1.7.2'):
                    # This option was removed from later versions
                    config_args.append('--with-cuda-libdir={0}'.format(
                        spec['cuda'].libs.directories[0]))
                if spec.satisfies('@1.7.2'):
                    # There was a bug in 1.7.2 when --enable-static is used
                    config_args.append('--enable-mca-no-build=pml-bfo')
                if spec.satisfies('%pgi^cuda@7.0:7.999'):
                    # OpenMPI has problems with CUDA 7 and PGI
                    config_args.append(
                        '--with-wrapper-cflags=-D__LP64__ -ta:tesla')
                    if spec.satisfies('%pgi@:15.8'):
                        # With PGI 15.9 and later compilers, the
                        # CFLAGS=-D__LP64__ is no longer needed.
                        config_args.append('CFLAGS=-D__LP64__')
            else:
                config_args.append('--without-cuda')

        if '+cxx_exceptions' in spec:
            config_args.append('--enable-cxx-exceptions')
        else:
            config_args.append('--disable-cxx-exceptions')
        return config_args

    @run_after('install')
    def delete_mpirun_mpiexec(self):
        # The preferred way to run an application when Slurm is the
        # scheduler is to let Slurm manage process spawning via PMI.
        #
        # Deleting the links to orterun avoids users running their
        # applications via mpirun or mpiexec, and leaves srun as the
        # only sensible choice (orterun is still present, but normal
        # users don't know about that).
        if '@1.6: ~legacylaunchers schedulers=slurm' in self.spec:
            exe_list = [self.prefix.bin.mpirun,
                        self.prefix.bin.mpiexec,
                        self.prefix.bin.shmemrun,
                        self.prefix.bin.oshrun
                        ]
            script_stub = join_path(os.path.dirname(__file__),
                                    "nolegacylaunchers.sh")
            for exe in exe_list:
                try:
                    os.remove(exe)
                except OSError:
                    tty.debug("File not present: " + exe)
                else:
                    copy(script_stub, exe)
