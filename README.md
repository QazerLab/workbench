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

The configuration file is [`group_vars/all.yml`](group_vars/all.yml).

After editing it as required, run

```
ansible-playbook install.yml
```

to start the installation process.



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



Note on Roles Grouping
======================

The roles are grouped according to the feature group to which they belong, e.g.:

* `base` for things which are useful on even most minimal setups;
* `dev` for development tools;
* `gui` for software which runs with graphical interface.

If some software piece logically belongs to multiple groups (e.g. Netbeans belongs to
both `dev` and `gui` groups), the role has to go to the group which is installed later,
e.g. Netbeans has to go to `gui`, as GUI things are installed later than development
tools in general).

This way we

* avoid the implicit installation of "heavy" dependencies earlier than they are really required;
* do not get lots of non-functional "garbage" if the installation fails in the middle.



Troubleshooting
===============

See [The Troubleshooting Guide](TROUBLESHOOTING.md).
