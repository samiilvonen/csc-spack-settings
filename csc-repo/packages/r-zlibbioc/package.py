# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class RZlibbioc(RPackage):
    """This package uses the source code of zlib-1.2.5 to create libraries
       for systems that do not have these available via other means (most
       Linux and Mac users should have system-level access to zlib, and no
       direct need for this package). See the vignette for instructions
       on use."""

    homepage = "http://bioconductor.org/packages/release/bioc/html/zlibbioc.html"
    url      = "https://bioconductor.org/packages/release/bioc/src/contrib/zlibbioc_1.30.0.tar.gz"
    
    version('1.30.0', sha256='f3fc143bc9d39defdfbf1e74f6d08e2ffc22bb1ee21e7dff5769ba2cf4150ac0')

    depends_on('r@3.6.0:3.6.9', when='@1.30.0', type=('build', 'run'))
