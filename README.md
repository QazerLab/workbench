Workbench
=========

A workstation installation suite.



Target Requirements
===================

The main target distro is ArchLinux, though there are no explicit dependencies (the
implicit ones are package names).

The suite expects the target OS to be

* working and self-sufficient (e.g. in case of Arch the system is expected to be
in post-[Installation Guide](https://wiki.archlinux.org/index.php/Installation_guide)
state);
* connected to the Internet.

Roles which may be useful for configuring user profile on servers (e.g.
`profile`, `bash`, `vim`) are planned to support CentOS/RHEL in future.



Installation
============

The [`group_vars`](group_vars) directory contains basic configuration for different device
archetypes; currently only desktops are supported. The [`inventories`](inventories) directory
contains host-specific inventories.

Run

```
ansible-playbook -i inventories/$DEVICE -b install_system.yml
```

to start system configuration process; run

```
ansible-playbook -i inventories/$DEVICE install.yml
```

to configure specific user and their environment.



Note on Implementation
======================

The playbook and the roles are intentionally **not** idempotent in the following ways:

* package versions are not specified;
* when something is installed from sources (e.g. `vim` plugins), `master` is used
instead of specific commits.

This radically differs from Ansible best practices and is dictated by the main use
case of this suite: the installation and maintenance of Arch workstation.

The installation process may implicitly update something and break the system &mdash;
this is completely OK and is expected (this is Arch, dude...).
On the other hand, finding the latest stable tag/version for each software
piece and filling it into the inventory variables is completely NOK and boring,
so the idempotence (and stability) is given up for the sake of usability.



Troubleshooting
===============

See [The Troubleshooting Guide](TROUBLESHOOTING.md).



Interesting Stuff
=================

* Custom [Openbox-based environment](roles/des/openbox-qaztom/README.md) with complete
  and highly custom [keymap](roles/des/openbox-qaztom/docs/keymap.md).
