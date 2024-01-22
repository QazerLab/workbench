devel_rust
==========

Installs Rust development tools.


Role Variables
--------------

Custom `toolchain_config` variables:

* `rustup_toolchains` &mdash; a list of rustup toolchains to install.
  * `name` &mdash; name of rustup toolchain.
  * `default` &mdash; `true` if this specific rustup toolchain must be set as default.
* `cargo_plugins` &mdash; a list of cargo plugin names to install.
