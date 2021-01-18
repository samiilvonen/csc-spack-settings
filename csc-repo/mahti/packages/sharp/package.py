# Copyright 2013-2019 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Sharp(Package):
    """Mellanox sharp package"""

    homepage = "https://www.mellanox.com"
    url      = "sharp.tar.gz"
    has_code = False

    version('2.0.0')

    def setup_dependent_environment(self, spack_env, run_env, dependent_spec):
        spack_env.prepend_path('LD_LIBRARY_PATH', '{0}'.format(self.prefix.lib))
        run_env.prepend_path('LD_LIBRARY_PATH', '{0}'.format(self.prefix.lib))

    def setup_environment(self, spack_env, run_env):
        spack_env.prepend_path('LD_LIBRARY_PATH', '{0}'.format(self.prefix.lib))
        run_env.prepend_path('LD_LIBRARY_PATH', '{0}'.format(self.prefix.lib))
