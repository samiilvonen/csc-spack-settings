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
#     spack install elmerfem
#
# You can edit this file again by typing:
#
#     spack edit elmerfem
#
# See the Spack documentation for more information on packaging.
# ----------------------------------------------------------------------------

from spack import *


class Elmerfem(CMakePackage):
    """FIXME: Put a proper description of your package here."""

    # FIXME: Add a proper url for your package's homepage here.
    homepage = "http://elmerfem.org"
    url      = "https://github.com/ElmerCSC/elmerfem/archive/release-8.4.tar.gz"

    version('8.4', sha256='cc3ce807d76798361592cc14952cdc3db1ad8f9bac038017514033ce9badc5b3')
    version('8.3', sha256='78aee1f7a364baf7dc26c738eb0e613e9b496e105a6ff88f48d0c281ec8c3cde')

    variant('mumps',  default=True,  description='Build with MUMPS support')
    variant('openmp', default=False, description='Enable OpenMP build')
    variant('mkl',    default=False, description='Build with MKL')
    variant('hypre' , default=False, description='Build with Hypre support')
    variant('lua',    default=False, description='Enable Lua support')

    depends_on('mpi')
    depends_on('blas')
    depends_on('lapack')
    depends_on('mkl',   when='+mkl')
    depends_on('mumps', when='+mumps')
    depends_on('lua',   when='+lua')

    def cmake_args(self):
        # FIXME: Add arguments other than
        # FIXME: CMAKE_INSTALL_PREFIX and CMAKE_BUILD_TYPE
        # FIXME: If not needed delete this function
        args = []
        return args
