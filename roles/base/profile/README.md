profile
=======

Installs user profile.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
    * `profile_dropins_dir` &mdash; directory for profile drop-ins.
* `system` &mdash; a dict with target system properties.
    * `hidpi` &mdash; whether to use HiDPI configuration or not.

Dependencies
------------

None.

License
-------

WTFPL
