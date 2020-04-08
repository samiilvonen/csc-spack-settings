# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

# ----------------------------------------------------------------------------
# If you submit this package back to Spack as a pull request,
# please first remove this boilerplate and all FIXME comments.
#
# This is a template package file for Spack.  We've put "FIXME"
# next to all the things you'll want to change. Once you've handled
# them, you can save this file and test your package like this:
#
#     spack install ipm
#
# You can edit this file again by typing:
#
#     spack edit ipm
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class Ipm(AutotoolsPackage):
    """IPM is a portable profiling infrastructure for parallel codes. It
    provides a low-overhead performance profile of the performance aspects
    and resource utilization in a parallel program. Communication,
    computation, and IO are the primary focus."""

    homepage = "http://ipm-hpc.sourceforge.net/"
    git      = "https://github.com/nerscadmin/IPM.git"

    version('2.0.6', tag='2.0.6')

    depends_on('m4', type='build')
    depends_on('automake', type='build')
    depends_on('autoconf', type='build')
    depends_on('libtool', type='build')

    depends_on('mpi')

    patch('shared.patch')

    parallel = False

    def setup_environment(self, build_env, run_env):
        build_env.append_flags('MPIFC', self.spec['mpi'].mpifc)
        build_env.append_flags('CFLAGS', '-O {}'.format(self.compiler.pic_flag))

    def autoreconf(self, spec, prefix):
        bash = which('bash')
        bash('./bootstrap.sh')

    def configure_args(self):
        config_args = ['--enable-posixio',
                       '--enable-shared']
        return config_args
