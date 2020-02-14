bash
====

Installs bash and its configurations.

Requirements
------------

None.

Role Variables
--------------

* `user` &mdash; a name of target user. Defaults to current (connection) user.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `features` &mdash; a dict with feature flags.
    * `dev` &mdash; a list of development features to be supported.
        * `base` &mdash; basic development tools.
        * `extras` &mdash; extra development tools.

Dependencies
------------

None.

License
-------

WTFPL
