# Copyright 2013-2019 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *
import os

class Aocl(Package):
    """AMD Optimizing CPU libraries (AOCL)

    AOCL are a set of numerical libraries tuned specifically for AMD
    EPYC™ processor family. They have a simple interface to take
    advantage of the latest hardware innovations. The tuned
    implementations of industry standard math libraries enable fast
    development of scientific and high-performance computing
    projects.
    """

    homepage = "https://developer.amd.com/amd-aocl/"
    manual_download = True
    maintainers = ['samiilvonen']

    version('2.0',
            sha256='b48e29c1743b12cc0f0292e40c7f02eff7a767d441ed37a9f111dca0df215435')


    def url_for_version(self, version):
        return "file://{0}/aocl-centos-{1}.tar.gz".format(os.getcwd(), version)

    def setup_dependent_environmnet(self, spack_env, run_env, dependent_spec):
        spack_env.prepend_path('LD_LIBRARY_PATH',     self.prefix.lib)
        spack_env.prepend_path('LIBRARY_PATH',        self.prefix.lib)
        spack_env.prepend_path('C_INCLUDE_PATH',      self.prefix.include)
        spack_env.prepend_path('C_PLUS_INCLUDE_PATH', self.prefix.include)
        run_env.prepend_path('LD_LIBRARY_PATH',     self.prefix.lib)
        run_env.prepend_path('LIBRARY_PATH',        self.prefix.lib)
        run_env.prepend_path('C_INCLUDE_PATH',      self.prefix.include)
        run_env.prepend_path('C_PLUS_INCLUDE_PATH', self.prefix.include)

    def install(self, spec, prefix):
        bash = which('bash')
        bash('install.sh', '-t', prefix)
        # install_tree('.', prefix)
