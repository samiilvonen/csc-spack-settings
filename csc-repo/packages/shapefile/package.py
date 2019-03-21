# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)


from spack import *


class Shapefile(AutotoolsPackage):
    """The Shapefile C Library provides the ability to write simple C 
    programs for reading, writing and updating (to a limited extent)
    ESRI Shapefiles, and the associated attribute file (.dbf).
    """

    homepage = "http://shapelib.maptools.org/"
    url      = "http://download.osgeo.org/shapelib/shapelib-1.5.0.tar.gz"

    version('1.5.0', sha256='1fc0a480982caef9e7b9423070b47750ba34cd0ba82668f2e638fab1d07adae1')
    version('1.4.1', sha256='a4c94817365761a3a4c21bb3ca1c680a6bdfd3edd61df9fdd291d3e7645923b3')

    depends_on('autoconf', type='build')
    depends_on('automake', type='build')
    depends_on('libtool',  type='build')
    depends_on('m4',       type='build')


    def autoreconf(self, spec, prefix):
        autoreconf('--install', '--verbose', '--force')

