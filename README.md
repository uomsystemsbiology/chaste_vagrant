### Overview

This is the reference environment built by the Systems Biology Lab for the simulation package Chaste ('Cancer, Heart and Soft Tissue Environment').  It installs the default Chaste Release 3.3. codebase as described [here](https://chaste.cs.ox.ac.uk/chaste/tutorials/release_3.3/InstallGuides/UbuntuPackage.html)  in a virtual machine, and provides links to run the cell-based demo.   You can find more information about this package at the [project page here](http://www.cs.ox.ac.uk/chaste/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](http://uomsystemsbiology.github.io/reference-environments/).  

### Instructions for use

This version of the reference environment is a virtual machine managed by [Vagrant](http://www.vagrantup.com).  To use it, install [Vagrant](http://www.vagrantup.com) and [VirtualBox](https://www.virtualbox.org/), then do:

```
$ git clone https://github.com/uomsystemsbiology/chaste_vagrant.git
$ cd chaste_vagrant
$ vagrant up
$ vagrant reload
```
This will start a virtual machine with scripts to run which reproduce results described in the manuscript.  

### Other links

[Manuscript link](http://doi:10.1016/j.pbiomolbio.2013.09.003)

[Project page link](http://www.cs.ox.ac.uk/chaste/)

[Bootable ISO](http://dx.doi.org/10.5281/zenodo.33077)