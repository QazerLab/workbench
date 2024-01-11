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
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `features` &mdash; a dict with feature flags.
    * `dev` &mdash; a list of development features to be supported.
        * `base` &mdash; basic development tools.
        * `extras` &mdash; extra development tools.
    * `cli` &mdash`; a list of CLI features to be supported.
        * `extras` &mdash; extra tools to enrich the command-line experience.

Dependencies
------------

None.

License
-------

WTFPL
