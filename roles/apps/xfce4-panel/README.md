xfce4-panel
===========

Installs xfce-panel and its configuration.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
* `install_packages` &mdash; if set to `false`, skips the package installation.
* `xfce` &mdash; xfce settings.
    * `panel` &mdash; xfce-panel settings.
        * `x`, `y` &mdash panel coordinates (`x` is the screen center, `y` is the panel top coordinate).

Dependencies
------------

None.

License
-------

WTFPL
