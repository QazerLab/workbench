devel-golang
============

Installs and configures the Golang toolchain.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `toolchain_config` &mdash; configuration of this toolchain.
    * `gopath` &mdash; the value of `GOPATH`; relative to the user home directory.

Dependencies
------------

None.

License
-------

WTFPL
