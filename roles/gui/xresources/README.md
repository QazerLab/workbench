X resources
===========

Installs X resources (icons, themes, related X configs, etc.).

All cursors are taken from [gnome-look.org](gnome-look.org) and copied here due to
possible unavailability of the original source; the copy is done under assumption
that the original license for the resources allows this (the license is not specified
in the original source).

Requirements
------------

None.

Role Variables
--------------

* `user` &mdash; a name of target user. Defaults to current (connection) user.
* `system` &mdash; a dict with target system properties.
    * `hidpi` &mdash; whether to use HiDPI configuration or not.

Dependencies
------------

None.

License
-------

WTFPL for all files except those which are under `files` directory.
The files in `files` retain their original license.
