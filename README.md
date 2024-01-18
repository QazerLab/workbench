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

The [`group_vars`](group_vars) directory contains basic configuration for
different device archetypes; currently only desktops are supported.

The [`inventories`](inventories) directory contains host-specific inventories.

Run

```sh
ansible-playbook -i inventories/$DEVICE -b install_system.yml
```

to start system configuration process; run

```sh
ansible-playbook -i inventories/$DEVICE install.yml
```

to configure specific user and their environment.



Common Configuration Model
==========================

To simplify the playbook structure, all roles follow the same conventional
parameters schema (which, well, somewhat violates Ansible conventions):

```yaml
system:
  laptop: [true | false]
  hidpi: [true | false]

  gui:
    dm: $DM_NAME

users:
  $USER_NAME:                         # user_config
    profile_dropins_dir: $DIR
    ...
    <basic user parameters>

    shells:
      $SHELL_NAME:                    # shell_config
        config_dropins_dir: $DIR
        ...
        <shell-specific params>

    editors:
      $EDITOR_NAME:                   # editor_config
        default: [true | false]
        config_dropins_dir: $DIR
        plugins_dir: $DIR
        ...
        <editor-specific params>

    toolchains:
      $TOOLCHAIN_NAME:                # toolchain_config
        <toolchain-specific params>

    apps:
      $APP_NAME:                      # app_config
        <app-specific params>

    gui:
      de: $DE_NAME                    # de_config
        <de-specific params>
```

This allows us to avoid passing lots of parameters downstream explicitly when
importing the roles.

Each role has access to system-wide settings, provided in top-level `system`
dictionary, which describe the system itself (hardware, etc.). In addition
to this, each role providing some user-specific configuration (DE, shell,
editor or toolchain) receives a `user_config` for current user.

Finally, as a shorthand for respective `user_config` part,

* each shell role receives the associated `shell_config`;
* each editor role receives the associated `editor_config`;
* each toolchain receives the associated `toolchain_config`;
* desktop environment receives the associated `de_config.

These roles still have access to whole `user_config`, but should use it directly
only when there is a need to access parts of user configuration outside of their
own scope: say, a toolchain installation role wanting to install some shell
configuration drop-ins (e. g. `.bashrc` drop-ins) or editor plugins and/or
configurations (e. g. Vim plugins) could check whether the specific shell or editor
is available in the scope of current user and where these plugins/configurations
should be placed (by inspecting `user_config[$SHELL_NAME]` and
`user_config[$SHELL_NAME]["dropins_dir"]` values).

Each user-specific role may have its own, unique (but public and readable by
other roles) parameters &mdash; in this case, they should be placed under
respecive `shell_config`, `editor_config` or `toolchain_config`. Only if this
is not applicable, the default Ansible convention must be followed and
role-specific parameter names must be prefixed with role name: this is
the case, for example, for role-private parameters like Vim plugins metadata.



Troubleshooting
===============

See [The Troubleshooting Guide](TROUBLESHOOTING.md).



Interesting Stuff
=================

* Custom [Openbox-based environment](roles/des/openbox-qaztom/README.md) with complete
  and highly custom [keymap](roles/des/openbox-qaztom/docs/keymap.md).
