# Copyright 2013-2019 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *

class AmdBlis(Package):
    """BLAS-like Library Instantiation Software Framework

    BLIS is a portable software framework for instantiating
    high-performance BLAS-like dense linear algebra libraries. The
    framework was designed to isolate essential kernels of computation
    that, when optimized, immediately enable optimized implementations of
    most of its commonly used and computationally intensive
    operations. BLIS is written in ISO C99 and available under a
    new/modified/3-clause BSD license.
    """

    homepage = "https://developer.amd.com/amd-aocl/blas-library/"
    git      = "https://github.com/amd/blis.git"

    maintainers = ['samiilvonen']

    version('develop', branch='master')
    version('2.1', tag='2.1')
    
    depends_on('python@2.7:2.8,3.4:', type=('build', 'run'))

    variant(
        'threads', default='none',
        description='Multithreading support',
        values=('pthreads', 'openmp', 'none'),
        multi=False
    )
    
    variant(
        'blas', default=True,
        description='BLAS compatibility',
    )
    
    variant(
        'cblas', default=True,
        description='CBLAS compatibility',
    )
    
    variant(
        'shared', default=True,
        description='Build shared library',
    )
    
    variant(
        'static', default=True,
        description='Build static library',
    )

    variant(
        'cpuarch', default='auto',
        description='Target architecture',
        values=('skx', 'haswell', 'generic', 'zen', 'zen2'),
        multi=False
    )
    

    provides('blas', when='+blas')
    provides('blas', when='+cblas')

    phases = ['configure', 'build', 'install']

    
    def configure(self, spec, prefix):
        config_args = []
        config_args.append("--enable-threading=" +
                           spec.variants['threads'].value)
        
        if '+cblas' in spec:
            config_args.append("--enable-cblas")
        else:
            config_args.append("--disable-cblas")
            
        if '+blas' in spec:
            config_args.append("--enable-blas")
        else:
            config_args.append("--disable-blas")
            
        if '+shared' in spec:
            config_args.append("--enable-shared")
        else:
            config_args.append("--disable-shared")
            
        if '+static' in spec:
            config_args.append("--enable-static")
        else:
            config_args.append("--disable-static")
            
        # FIXME: add cpu isa variants.
        config_args.append(spec.variants['cpuarch'].value)
        
        configure("--prefix=" + prefix, *config_args)
        
        return config_args

    def build(self, spec, prefix):
        make()

    @run_after('build')
    @on_package_attributes(run_tests=True)
    def check(self):
        make('check')

    def install(self, spec, prefix):
        make('install')

    @property
    def libs(self):
        return find_libraries(['libblis*'],
                              root=self.prefix.lib,
                              shared=('+shared' in self.spec),
                              recursive=False) or None
