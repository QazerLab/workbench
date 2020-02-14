dev/golang
==========

Installs and configures the Golang toolchain.

Requirements
------------

None.

Role Variables
--------------

* `user` &mdash; a name of target user. Defaults to current (connection) user.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `golang_gopath` &mdash; the value of `GOPATH`; relative to the user home directory.

Dependencies
------------

None.

License
-------

WTFPL
