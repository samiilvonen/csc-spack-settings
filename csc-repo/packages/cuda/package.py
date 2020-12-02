# Copyright 2013-2019 Lawrence Livermore National Security, LLC and other
# Spack Project Developers. See the top-level COPYRIGHT file for details.
#
# SPDX-License-Identifier: (Apache-2.0 OR MIT)

from spack import *
from glob import glob


class Cuda(Package):
    """CUDA is a parallel computing platform and programming model invented
    by NVIDIA. It enables dramatic increases in computing performance by
    harnessing the power of the graphics processing unit (GPU).

    Note: This package does not currently install the drivers necessary
    to run CUDA. These will need to be installed manually. See:
    https://docs.nvidia.com/cuda/ for details."""

    homepage = "https://developer.nvidia.com/cuda-zone"

    version('11.1.0', sha256='858cbab091fde94556a249b9580fadff55a46eafbcb4d4a741d2dcd358ab94a5', expand=False,
            url="https://developer.download.nvidia.com/compute/cuda/11.1.0/local_installers/cuda_11.1.0_455.23.05_linux.run")
    version('11.0.2', sha256='48247ada0e3f106051029ae8f70fbd0c238040f58b0880e55026374a959a69c1', expand=False,
            url="https://developer.download.nvidia.com/compute/cuda/11.0.2/local_installers/cuda_11.0.2_450.51.05_linux.run")
    version('10.1.168', sha256='4fcad1d2af35495ff57b8ea5851f6031c3d350d14e88f5db12c40a4074ddf43f', expand=False,
            url="https://developer.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda_10.1.168_418.67_linux.run")
    version('10.1.105', sha256='33ac60685a3e29538db5094259ea85c15906cbd0f74368733f4111eab6187c8f', expand=False,
            url="https://developer.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda_10.1.105_418.39_linux.run")
    version('10.0.130', sha256='92351f0e4346694d0fcb4ea1539856c9eb82060c25654463bfd8574ec35ee39a', expand=False,
            url="https://developer.nvidia.com/compute/cuda/10.0/Prod/local_installers/cuda_10.0.130_410.48_linux")
    version('9.2.88', 'dd6e33e10d32a29914b7700c7b3d1ca0', expand=False,
            url="https://developer.nvidia.com/compute/cuda/9.2/Prod/local_installers/cuda_9.2.88_396.26_linux")
    version('9.1.85', '67a5c3933109507df6b68f80650b4b4a', expand=False,
            url="https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux")
    version('9.0.176', '7a00187b2ce5c5e350e68882f42dd507', expand=False,
            url="https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run")

    def install(self, spec, prefix):
        runfile = glob(join_path(self.stage.path, 'cuda*_linux*'))[0]
        chmod = which('chmod')
        chmod('+x', runfile)
        runfile = which(runfile)

        # Note: NVIDIA does not officially support many newer versions of
        # compilers.  For example, on CentOS 6, you must use GCC 4.4.7 or
        # older. See:
        # http://docs.nvidia.com/cuda/cuda-installation-guide-linux/#system-requirements
        # https://gist.github.com/ax3l/9489132
        # for details.

        # Configuration flags changed for 10.1, --verbose is missing and
        # --defaultroot is needed for sdk installation
        if spec.satisfies('@:10.0.999'):
            runfile(
                '--silent',         # disable interactive prompts
                '--verbose',        # create verbose log file
                '--override',       # override compiler version checks
                '--toolkit',        # install CUDA Toolkit
                '--toolkitpath=%s' % prefix
            )
        else:
            runfile(
                '--silent',         # disable interactive prompts
                '--override',       # override compiler version checks
                '--toolkit',        # install CUDA Toolkit
                '--toolkitpath=%s' % prefix,
                '--defaultroot=%s' % prefix # This is needed for 10.1 and up
            )
