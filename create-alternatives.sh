#!/bin/bash

altdir="$(pwd)/spack/etc/spack"
siteconf="$(pwd)/site-config"

alternatives --altdir ${altdir} --admindir alternatives \
             --install ${altdir}/config.yaml config.yaml ${siteconf}/puhti/config.yaml 40 \
             --slave   ${altdir}/modules.yaml modules.yaml ${siteconf}/puhti/modules.yaml \
             --slave   ${altdir}/packages.yaml packages.yaml ${siteconf}/puhti/packages.yaml \
             --slave   ${altdir}/compilers.yaml compilers.yaml ${siteconf}/puhti/compilers.yaml \
             --slave   ${altdir}/repos.yaml repos.yaml ${siteconf}/puhti/repos.yaml

alternatives --altdir ${altdir} --admindir alternatives \
             --install ${altdir}/config.yaml config.yaml ${siteconf}/mahti/config.yaml 30 \
             --slave   ${altdir}/modules.yaml modules.yaml ${siteconf}/mahti/modules.yaml \
             --slave   ${altdir}/packages.yaml packages.yaml ${siteconf}/mahti/packages.yaml \
             --slave   ${altdir}/compilers.yaml compilers.yaml ${siteconf}/mahti/compilers.yaml \
             --slave   ${altdir}/repos.yaml repos.yaml ${siteconf}/mahti/repos.yaml

alternatives --altdir ${altdir} --admindir alternatives \
             --install ${altdir}/config.yaml config.yaml ${siteconf}/laptop/config.yaml 20 \
             --slave   ${altdir}/modules.yaml modules.yaml ${siteconf}/laptop/modules.yaml \
             --slave   ${altdir}/packages.yaml packages.yaml ${siteconf}/laptop/packages.yaml

alternatives --altdir ${altdir} --admindir alternatives \
             --install ${altdir}/config.yaml config.yaml ${siteconf}/test-env/config.yaml 10 \
             --slave   ${altdir}/modules.yaml modules.yaml ${siteconf}/test-env/modules.yaml \
             --slave   ${altdir}/packages.yaml packages.yaml ${siteconf}/test-env/packages.yaml

alternatives --altdir ${altdir} --admindir alternatives \
             --install ${altdir}/config.yaml config.yaml ${siteconf}/chained-test-env/config.yaml 10 \
             --slave   ${altdir}/modules.yaml modules.yaml ${siteconf}/chained-test-env/modules.yaml \
             --slave   ${altdir}/packages.yaml packages.yaml ${siteconf}/chained-test-env/packages.yaml \
             --slave   ${altdir}/upstreams.yaml upstreams.yaml ${siteconf}/chained-test-env/upstreams.yaml

alternatives --altdir ${altdir} --admindir alternatives \
             --install ${altdir}/config.yaml config.yaml ${siteconf}/omp5/config.yaml 30 \
             --slave   ${altdir}/modules.yaml modules.yaml ${siteconf}/omp5/modules.yaml \
             --slave   ${altdir}/packages.yaml packages.yaml ${siteconf}/omp5/packages.yaml \
             --slave   ${altdir}/compilers.yaml compilers.yaml ${siteconf}/omp5/compilers.yaml \
             --slave   ${altdir}/repos.yaml repos.yaml ${siteconf}/omp5/repos.yaml
