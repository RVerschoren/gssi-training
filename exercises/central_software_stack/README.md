# Central software stack

This exercise aims to give you hands-on experience with the central software 
stack and the Lmod module system used on VSC clusters.
You will learn how to discover available software, load modules, inspect 
dependencies, and understand how modules affect your environment. The exercise 
should take approximately 30 minutes.

We will use **tblite**, a software package that provides both a 
command-line application and Python bindings. However, you can also work 
through these exercises using a software package of your own choosing.

You can find the relevant documentation in the "Central software stack" section of
the [GSSI training material](https://vscentrum.github.io/gssi-training) and in
the [Module system basics](https://docs.vscentrum.be/compute/software/using_software/module_system_basics.html), 
[Cluster modules](https://docs.vscentrum.be/compute/software/using_software/cluster_modules.html) sections on VSCDocs.

Here are some questions to help you explore the module systemon a VSC
cluster:

- Which versions of `tblite` are available on the cluster?
- Do you notice any difference in the outputs between `module avail` and 
  `module spider`?
- Which dependencies does the `tblite/0.4.0-gfbf-2024a` module have?
- When loading the `tblite/0.4.0-gfbf-2024a` module, which changes are made in 
  the environment w.r.t. the `tblite` command and tblite Python bindings?
- Which module for `matplotlib` is compatible with the `tblite/0.4.0-gfbf-2024a` 
  module?
- Which module for `tqdm` is compatible with `tblite/0.4.0-gfbf-2024a`?
- Which module (that is compatible with the already loaded modules) provides 
  `numpy`?
- How many Python packages are available after loading the modules for 
  `tblite`, `matplotlib`, and `tqdm`?
- What happens if you try to load a module that is incompatible with one of 
  the already loaded modules?
- What happens to your environment when you unload the `tblite` module?
- How can you restore the default module environment
  of the cluster?
