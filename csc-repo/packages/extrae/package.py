# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Extrae(AutotoolsPackage):
    """Extrae is the package devoted to generate Paraver trace-files for a
    post-mortem analysis. Extrae is a tool that uses different
    interposition mechanisms to inject probes into the target application
    so as to gather information regarding the application performance. The
    following table summarizes the programming models and systems
    supported by Extrae."""

    homepage = "https://tools.bsc.es/extrae"
    git      = "https://github.com/bsc-performance-tools/extrae.git"

    version('3.7.1', tag='3.7.1')

    depends_on('autoconf', type='build')
    depends_on('automake', type='build')
    depends_on('libtool',  type='build')
    depends_on('m4',       type='build')

    depends_on('mpi')
    depends_on('libunwind')
    depends_on('dyninst@:9.9')
    depends_on('libdwarf')
    depends_on('elfutils')
    depends_on('papi')
    depends_on('binutils+libiberty')

    parallel = False

    build_directory = 'spack-build'
    
    def autoreconf(self, spec, prefix):
        # FIXME: Modify the autoreconf method as necessary
        autoreconf('--install', '--verbose', '--force')

    def configure_args(self):
        # FIXME: Add arguments other than --prefix
        # FIXME: If not needed delete this function
        args = ['--with-mpi={}'.format(self.spec['mpi'].prefix),
                '--with-unwind={}'.format(self.spec['libunwind'].prefix),
                '--with-dyninst={}'.format(self.spec['dyninst'].prefix),
                '--with-dwarf={}'.format(self.spec['libdwarf'].prefix),
                '--with-elf={}'.format(self.spec['elfutils'].prefix),
                '--with-papi={}'.format(self.spec['papi'].prefix),
                '--with-binutils={}'.format(self.spec['binutils'].prefix)]
        return args
