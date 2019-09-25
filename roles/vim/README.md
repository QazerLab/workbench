dotfiles-minimal
================

Installs vim with minimal set of configuration files, which are useful both at desktop
and server machines. Currently includes:

* vanilla vim configuration
* vim plugins and their configurations

*Note*: build of binary vim plugins is a pain involving lots of dependencies
and performing some raw shell operations according to plugins' manuals.
This means that using this role for binary plugins installation on arbitrary machine
is likely to cause some undefined behavior and require some manual intervention.
For this reason, only minimal set of trivial vim plugins is installed by default.

Requirements
------------

The role does not check the presence of external software dependencies (like `cargo` for `vim-rust` vim plugin).

Role Variables
--------------

* `user` - a name of target user. Defaults to current (connection) user.
* `install_packages` - if set to `false`, skips the package installation.
* `vim_plugins` - a list of vim plugins to be installed.

Dependencies
------------

For YCM vim plugin:

* `python-dev`
* `gcc`
* `cmake`
* `go` (for Golang stuff)
* `rustup` and whole toolchain being installed (for Rust stuff)

For Command-T vim plugin:

* `ruby`
* `gcc`
* `make`

For Rust-related vim plugins (including YCM) Rust toolchain must be present.

License
-------

WTFPL
