# Python's pip+venv and alternatives

This exercise aims to give you hands-on experience with installing Python
packages and contrasting some different approaches. To get started, choose a
Python package that has at least one non-trivial dependency and ideally
includes some non-Python source code (which is then typically connected to the
Python package with `cython` or `f2py`). It is recommended to choose a Python
package related to your area of research, but if you are really lacking
inspiration, you can complete this exercise using the
[astropy](https://github.com/astropy/astropy) package.

You can find the relevant documentation in the "Python's pip+venv" section of
the [GSSI training material](https://vscentrum.github.io/gssi-training) and in
the [Python package management section on VSCDocs](https://docs.vscentrum.be/compute/software/installing_software/python_package_management.html#).

Here are the different methods you can use to install astropy on a VSC
cluster:

- using `pip` in a `venv` with the system Python
- using `pip` in a `venv`, satisfying some dependencies with centrally
  installed modules
- using `pip` in a `venv`, but without downloading prebuilt binaries (only
  relevant if the package includes non-Python source code that requires
  compilation)
- using `vsc-venv` (see 
  [vsc-venv on VSCDocs](https://docs.vscentrum.be/compute/software/installing_software/python_package_management.html#the-vsc-venv-utility))
- using a Conda-based environment manager as discussed in another part of the
  training (see [conda-based environment managers on VSCDocs](https://docs.vscentrum.be/compute/software/installing_software/conda_based_managers.html#conda-based-environment-managers))
- using `uv` (not discussed in the training, see the [uv pages](https://docs.astral.sh/uv/))

> **_NOTE:_** Make sure to keep the different installations separated, mixing
> approaches will likely cause problems

After trying the different installation approaches, compare them with respect
to the following characteristics:

- easy of use
- time it takes to install the package
- disk space and number of files consumed by the installation
- reproducibility
- portability (e.g., does the same installation work on different architectures?)
- performance: ideally, use a benchmark (check if the source of the chosen
  package includes one) to compare runtimes for the different installations.
  Try to explain possible differences from a theoretical point of view and
  connect to what you observe in practice.
