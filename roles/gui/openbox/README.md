openbox
=======

Installs openbox and its configuration.

Requirements
------------

None.

Role Variables
--------------

* `user` &mdash; a name of target user. Defaults to current (connection) user.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `system` &mdash; a dict with target system properties.
    * `hidpi` &mdash; whether to use HiDPI configuration or not.
* `features` &mdash; a dict with feature flags.
    * `dev` &mdash; a list of development features to be supported.
        * `java` &mdash; support Java-related GUI stuff.

Dependencies
------------

None.

License
-------

WTFPL
