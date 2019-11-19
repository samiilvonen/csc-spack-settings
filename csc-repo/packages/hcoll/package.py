# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Hcoll(Package):
    """Mellanox hcoll collectives package"""

    homepage = "http://www.mellanox.com"
    url      = "hcoll.tar.gz"
    has_code = False

    version('4.4.2938')
    version('4.3.2708')
    
    def setup_environment(self, spack_env, run_env):
        spack_env.prepend_path('LD_LIBRARY_PATH', '{0}'.format(self.prefix.lib))
        run_env.prepend_path('LD_LIBRARY_PATH', '{0}'.format(self.prefix.lib))
        
