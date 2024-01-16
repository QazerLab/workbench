vim
===

Installs additional vim plugins.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `features` &mdash; a dict with feature flags.
    * `dev` &mdash; a list of development features to be supported.
        * `base` &mdash; basic development tools.

Dependencies
------------

For YCM vim plugin:

* `python-dev`
* `gcc`
* `cmake`
* `go` (for Golang stuff)
* `rustup` and whole toolchain being installed (for Rust stuff)

For Fzf vim plugin (TODO: move to respective toolchain!):

* `fzf`
* `fd`

For Rust-related vim plugins (including YCM) Rust toolchain must be present.

License
-------

WTFPL
