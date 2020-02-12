profile
=======

Installs user profile.

Requirements
------------

None.

Role Variables
--------------

* `user` &mdash; a name of target user. Defaults to current (connection) user.
* `features` &mdash; a dict with feature flags.
    * `dev` &mdash; a list of development features to be supported.
        * `base` &mdash; basic development tools.
    * `gui` &mdash; a list of GUI features to be supported; an empty object
      `gui` (or its absence, if no GUI support is required) is sufficient for
       this specific role.
* `system` &mdash; a dict with target system properties.
    * `hidpi` &mdash; whether to use HiDPI configuration or not.

Dependencies
------------

None.

License
-------

WTFPL
