doublecmd
=========

Basic doublecmd installation role.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
* `doublecmd` &mdash; doublecmd settings.
    * `terminal` &mdash; terminal opened by F9.
    * `editor` &mdash; text editor opened by F4.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `force_clean_configs` &mdash; set to true if you want to replace existing configs with templated one.


Dependencies
------------

None.

License
-------

WTFPL
