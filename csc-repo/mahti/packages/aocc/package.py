# Copyright 2013-2019 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *
import os

class Aocc(Package):
    """AMD Optimizing C/C++ Compiler

    The AOCC compiler system is a high performance, production quality
    code generation tool. The AOCC environment provides various
    options to developers when building and optimizing C, C++, and
    Fortran applications targeting 32-bit and 64-bit Linux platforms.
    """

    homepage = "https://developer.amd.com/amd-aocc"
    manual_download = True
    maintainers = ['samiilvonen']

    version('2.1.0',
            sha256='059095d26a20d816505369b4f66fb552f4e34259d9631f03fd5966dbcd7b9d20')


    def url_for_version(self, version):
        return "file://{0}/aocc-compiler-{1}.tar".format(os.getcwd(), version)

    def setup_dependent_environment(self, spack_env, run_env, dependent_spec):
        """Add paths to dependent environments.

        Note that lib32 is skipped intentionally"""
        spack_env.prepend_path('LD_LIBRARY_PATH',     self.prefix.lib)
        spack_env.prepend_path('LIBRARY_PATH',        self.prefix.lib)
        spack_env.prepend_path('C_INCLUDE_PATH',      self.prefix.include)
        spack_env.prepend_path('C_PLUS_INCLUDE_PATH', self.prefix.include)
        run_env.prepend_path('LD_LIBRARY_PATH',     self.prefix.lib)
        run_env.prepend_path('LIBRARY_PATH',        self.prefix.lib)
        run_env.prepend_path('C_INCLUDE_PATH',      self.prefix.include)
        run_env.prepend_path('C_PLUS_INCLUDE_PATH', self.prefix.include)

    def install(self, spec, prefix):
        install_tree('.', prefix)
