tilda
=====

Installs tilda and its configuration.

Note: tilda is used as a desktop window (i.e. the terminal is used instead of
icons and other trash), so it shoud always occupy the full screen.

The current stable version of tilda stores absolute size values in the config,
so it is hard to perform machine-specific deployment (it is not known in 
advance which resolution and scaling will be used), however, the latest (still
unreleased) version of tilda uses percentage instead, so this role will need a
change when new version of tilda will be released. 

Requirements
------------

None.

Role Variables
--------------

* `user` - a name of target user. Defaults to current (connection) user.
* `install_packages` - if set to `false`, skips the package installation.

Dependencies
------------

None.

License
-------

WTFPL
