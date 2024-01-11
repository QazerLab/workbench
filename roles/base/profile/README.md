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
* `features` &mdash; a dict with feature flags.
    * `dev` &mdash; a list of development features to be supported.
        * `base` &mdash; basic development tools.
        * `golang` &mdash; Golang toolchain.
    * `cli` &mdash`; a list of CLI features to be supported.
        * `extras` &mdash; extra tools to enrich the command-line experience.
    * `gui` &mdash; a list of GUI features to be supported; an empty object
      `gui` (or its absence, if no GUI support is required) is sufficient for
       this specific role.
* `system` &mdash; a dict with target system properties.
    * `hidpi` &mdash; whether to use HiDPI configuration or not.
* `golang_gopath` &mdash; the value of `GOPATH`; relative to the user home directory.
  Makes sense only if `golang` is present in `features["dev"]`.

Dependencies
------------

None.

License
-------

WTFPL
