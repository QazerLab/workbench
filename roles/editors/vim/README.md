vim
===

Installs vim with minimal set of configuration files, which are useful both at desktop
and server machines. Currently includes:

* basic vim configuration (`.vimrc`);
* plugins manager (pathogen) and configuration drop-in directory;
* basic vim plugins and their configurations.

Toolchains may install their own tools and configuration drop-ins to enrich Vim configuration.

Requirements
------------

None.

Role Variables
--------------

* `user_config` &mdash; user configuration.
    * `name` &mdash; name of the target user.
    * `home_dir` &mdash; target user's home.
* `install_packages` &mdash; if set to `false`, skips the package installation.

Dependencies
------------

None.

License
-------

WTFPL
