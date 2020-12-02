# Copyright 2013-2018 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *


class Splits(AutotoolsPackage):
    """SPLITS (Spline Analysis of Time Series) is a software package
    to analyze time series of remotely sensed parameters such as vegetation
    indices. It has been designed for handling large datasets on Linux and
    UNIX platforms."""

    homepage = "http://sebastian-mader.net/splits/"
    url      = "http://sebastian-mader.net/wp-content/uploads/2018/10/splits-1.10.tar.gz"

    version('1.10', sha256='cdb9a520300d170dcd8d58e17f63a428f3d6b797c92e53b40c8b44f2131efbe2')
    version('1.11', sha256='6b43d41242a9963d84430f3b059412d0445da9ec38181e17a30cc5e65e51af3d')

    variant('gui', default=False, description='Enable fltk gui')

    depends_on('gdal@:2.9.99')
    depends_on('armadillo')

    depends_on('fltk', when='+gui')


    # Downloads are located under dated folders so no systematic way to resolve them based on the version

    def url_for_version(self, version):
        date="url-not-set"
        url_base="http://sebastian-mader.net/wp-content/uploads/"
        if(str(version) == "1.11"):
            date="2020/07/"
        elif(str(version) == "1.10"):
            date="2018/10/"
        elif(str(version) == "1.9" or str(version) == "1.8" ):
            date="2017/11/"
        return url_base+date+"splits-"+str(version)+".tar.gz"

    def configure_args(self):
        config_args = []

        if '+gui' in self.spec:
            config_args.append('--enable-gui')
        else:
            config_args.append('--disable-gui')

        return config_args
