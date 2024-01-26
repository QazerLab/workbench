shell_basic
===========

Configures minimal environment for good shell experience.



LS_COLORS
---------

This role ships custom 'LS_COLORS' scheme, which is based on the default ls
color scheme but is more consistent:

* __files__: white...
  * __with multiple hardlinks__: with cyan background.

* __directories__: blue...
  * __with sticky bit__: with cyan background;
  * __other-writable__: with yellow foreground;
  * __other-writable with sticky bit__: with green foreground.

* __symlinks__: cyan...
  * __orphaned__: with red background.

* __executables__: light-green...
  * __with SUID bit__: with red background;
  * __with SGID bit__: with orange background;
  * __with capabilities__: with yellow background.

Additionally, ordinary files have some colors too, but these colors should not
be easy to mix with main coloring.
