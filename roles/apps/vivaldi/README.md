vivaldi
=======

Basic Vivaldi installation role.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
    * `downloads_dir` &mdash; user's downloads directory.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `force_clean_configs` &mdash; set to true if you want to replace existing configs with templated one.


Dependencies
------------

None.

License
-------

WTFPL
