# Copyright 2013-2019 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

import os
import os.path

import llnl.util.lang

from spack import *


class AmdFftw(AutotoolsPackage):
    """AMD Optimized FFTW

       FFTW is a C subroutine library for computing the discrete Fourier
       transform (DFT) in one or more dimensions, of arbitrary input
       size, and of both real and complex data (as well as of even/odd
       data, i.e. the discrete cosine/sine transforms or DCT/DST). We
       believe that FFTW, which is free software, should become the FFT
       library of choice for most applications."""

    homepage = "https://developer.amd.com/amd-aocl/fftw/"
    git      = "https://github.com/amd/amd-fftw.git"

    maintainers = ['samiilvonen']

    version('master', branch='master')
    version('2.1', tag='v2.1')

    
    variant('precision', values=any_combination_of(
            'float', 'double', 'long_double', 'quad'
        ).prohibit_empty_set().with_default('float,double'),
        description='Build the selected floating-point precision libraries')
    variant('openmp', default=False, description="Enable OpenMP support.")
    variant('mpi', default=True, description='Activate MPI support')
    variant('pfft_patches', default=False,
        description='Add extra transpose functions for PFFT compatibility')

    depends_on('mpi', when='+mpi')
    depends_on('automake', type='build', when='+pfft_patches')
    depends_on('autoconf', type='build', when='+pfft_patches')
    depends_on('libtool', type='build', when='+pfft_patches')
    depends_on('texinfo', type='build')
    
    provides('fftw-api@3', when='@2.1:')

    @property
    def libs(self):

        # Reduce repetitions of entries
        query_parameters = list(llnl.util.lang.dedupe(
            self.spec.last_query.extra_parameters
        ))

        # List of all the suffixes associated with float precisions
        precisions = [
            ('float', 'f'),
            ('double', ''),
            ('long_double', 'l'),
            ('quad', 'q')
        ]

        # Retrieve the correct suffixes, or use double as a default
        suffixes = [v for k, v in precisions if k in query_parameters] or ['']

        # Construct the list of libraries that needs to be found
        libraries = []
        for sfx in suffixes:
            if 'mpi' in query_parameters and '+mpi' in self.spec:
                libraries.append('libfftw3' + sfx + '_mpi')

            if 'openmp' in query_parameters and '+openmp' in self.spec:
                libraries.append('libfftw3' + sfx + '_omp')

            libraries.append('libfftw3' + sfx)

        return find_libraries(libraries, root=self.prefix, recursive=True)

    def patch(self):
        # If fftw/config.h exists in the source tree, it will take precedence
        # over the copy in build dir.  As only the latter has proper config
        # for our build, this is a problem.  See e.g. issue #7372 on github
        if os.path.isfile('fftw/config.h'):
            os.rename('fftw/config.h', 'fftw/config.h.SPACK_RENAMED')

    def autoreconf(self, spec, prefix):
        if '+pfft_patches' in spec:
            autoreconf = which('autoreconf')
            autoreconf('-ifv')

    @property
    def selected_precisions(self):
        """Precisions that have been selected in this build"""
        return self.spec.variants['precision'].value

    def configure(self, spec, prefix):
        # Base options
        options = [
            '--prefix={0}'.format(prefix),
            '--enable-shared',
            '--enable-threads'
        ]
        if not self.compiler.f77 or not self.compiler.fc:
            options.append("--disable-fortran")
        if spec.satisfies('@:2'):
            options.append('--enable-type-prefix')

        # Variants that affect every precision
        if '+openmp' in spec:
            # Note: Apple's Clang does not support OpenMP.
            if spec.satisfies('%clang'):
                ver = str(self.compiler.version)
                if ver.endswith('-apple'):
                    raise InstallError("Apple's clang does not support OpenMP")
            options.append('--enable-openmp')
            if spec.satisfies('@:2'):
                # TODO: libtool strips CFLAGS, so 2.x libxfftw_threads
                #       isn't linked to the openmp library. Patch Makefile?
                options.insert(0, 'CFLAGS=' + self.compiler.openmp_flag)
        if '+mpi' in spec:
            options.append('--enable-mpi')

        # Specific SIMD support.
        # all precisions
        simd_features = ['sse2', 'avx', 'avx2']
        float_simd_features = ['sse2', 'avx', 'avx2']
        
        simd_options = []
        for feature in simd_features:
            msg = '--enable-{0}' if feature in spec.target else '--disable-{0}'
            simd_options.append(msg.format(feature))

        # Enable AMD specific optimizations
        simd_options += ['--enable-amd-opt']

        # Double is the default precision, for all the others we need
        # to enable the corresponding option.
        enable_precision = {
            'float': ['--enable-float'],
            'double': None,
            'long_double': ['--enable-long-double'],
            'quad': ['--enable-quad-precision']
        }

        # Different precisions must be configured and compiled one at a time
        configure = Executable('../configure')
        for precision in self.selected_precisions:
            opts = (enable_precision[precision] or []) + options[:]

            # SIMD optimizations are available only for float and double
            # starting from FFTW 3
            if precision in ('float', 'double') and spec.satisfies('@3:'):
                opts += simd_options

            # float-only acceleration
            if precision == 'float':
                for feature in float_simd_features:
                    if feature in spec.target:
                        msg = '--enable-{0}'
                    else:
                        msg = '--disable-{0}'
                    opts.append(msg.format(feature))

            with working_dir(precision, create=True):
                configure(*opts)

    def for_each_precision_make(self, *targets):
        for precision in self.selected_precisions:
            with working_dir(precision):
                make(*targets)

    def build(self, spec, prefix):
        self.for_each_precision_make()

    def check(self):
        self.for_each_precision_make('check')

    def install(self, spec, prefix):
        self.for_each_precision_make('install')
