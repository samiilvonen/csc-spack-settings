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

    depends_on('gdal@:2.9.99')
    depends_on('armadillo')

    def configure_args(self):
        config_args = []
        config_args.append('--disable-gui')
        return config_args
