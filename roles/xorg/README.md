xorg
====

Installs Xorg server, its configuration, utilities and resources (icons, themes,
related X configs, etc.).

All cursors are taken from [gnome-look.org](gnome-look.org) and copied here due to
possible unavailability of the original source; the copy is done under assumption
that the original license for the resources allows this (the license is not specified
in the original source).

Requirements
------------

None.

Role Variables
--------------

* `system` &mdash; a dict with target system properties.
    * `laptop` &mdash; defines whether the target system is a laptop or not.
    * `hidpi` &mdash; whether to use HiDPI configuration or not.

Dependencies
------------

None.

License
-------


WTFPL for all files except those which are under `files` directory.
The files in `files` retain their original license and belong to their authors.
