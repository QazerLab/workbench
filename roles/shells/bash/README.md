bash
====

Installs bash and its configurations.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
* `shell_config` &mdash; current shell configuration.
    * `config_dropins_dir` &mdash; a directory for managed shell drop-ins.
* `install_packages` &mdash; if set to `false`, skips the package installation.

Dependencies
------------

None.

License
-------

WTFPL
