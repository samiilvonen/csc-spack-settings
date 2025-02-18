-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2024-11-11 15:31:47.784138
--
-- py-pure-sasl@0.6.2%gcc@13.2.0+gssapi build_system=python_pip arch=linux-rocky8-cascadelake/qgwb5c5
--

whatis([[Name : py-pure-sasl]])
whatis([[Version : 0.6.2]])
whatis([[Target : cascadelake]])
whatis([[Short description : This package provides a reasonably high-level SASL client written in pure Python. New mechanisms may be integrated easily, but by default, support for PLAIN, ANONYMOUS, EXTERNAL, CRAM-MD5, DIGEST-MD5, and GSSAPI are provided.]])

help([[Name   : py-pure-sasl]])
help([[Version: 0.6.2]])
help([[Target : cascadelake]])
help()
help([[This package provides a reasonably high-level SASL client written in
pure Python. New mechanisms may be integrated easily, but by default,
support for PLAIN, ANONYMOUS, EXTERNAL, CRAM-MD5, DIGEST-MD5, and GSSAPI
are provided.]])


depends_on("gcc-runtime/13.2.0")
depends_on("glibc/2.28")
depends_on("py-kerberos/1.3.0")
depends_on("python/3.11.7")
depends_on("python-venv/1.0")

prepend_path("LIBRARY_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-pure-sasl-0.6.2-qgwb5c/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-pure-sasl-0.6.2-qgwb5c/.", ":")
prepend_path("PYTHONPATH", "/appl/spack/v022/install-tree/gcc-13.2.0/py-pure-sasl-0.6.2-qgwb5c/lib/python3.11/site-packages", ":")

