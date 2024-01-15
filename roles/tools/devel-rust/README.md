devel-rust
==========

Installs Rust development tools.

Requirements
------------

None.

Role Variables
--------------

* `install_packages` &mdash; if set to `false`, skips the package installation.
* `toolchain_config` &mdash; configuration of this toolchain.
  * `rustup_toolchains` &mdash; a list of rustup toolchains to install.
    * `name` &mdash; name of rustup toolchain.
    * `default` &mdash; `true` if this specific rustup toolchain must be set as default.

Dependencies
------------

None.

License
-------

WTFPL
