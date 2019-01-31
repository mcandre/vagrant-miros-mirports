# vagrant-miros-mirports: a Vagrant box with MirOS (MirBSD) + MirPorts

# WARNING

(MirPorts appears to be broken in MirOS v10.)

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/vagrant-miros-mirports-i386

# EXAMPLE

```console
$ cd i386/test
$ vagrant up
$ vagrant ssh -c "cd /usr/ports && sudo cvs update && cd /usr/ports/net/curl && sudo mmake install clean && curl --version"
...
```

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# BUILDTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* The [VirtualBox](https://www.virtualbox.org) hypervisor provider
* [make](https://www.gnu.org/software/make/)

# EXPORT

```console
$ sh -c "cd i386 && make vagrant-miros-mirports-i386.box"
```
