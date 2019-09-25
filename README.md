Workbench
=========

A workstation installation suite.

Target Requirements
===================

Designed for ArchLinux, but some things may occasionally work for other distros.

Support for other distros (at least CentOS/RHEL) is planned for future.

Installation
============

Generally there are two options:

* full installation (with packages and root-owned configs in `/etc`);
* user-specific configurations update (dotfiles rollout only).

This separation is designed with the intent to use this installation suite not only for workstations,
but also for shared servers, where the user does not have privileges, but still needs the dotfiles.

To run the full installation, execute

```
ansible-playbook install_full.yml
```

To install/update the configurations, run

```
ansible-playbook install_dotfiles.yml
```
