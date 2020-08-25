The Troubleshooting Guide
=========================

This guide covers typical errors that arise during (or after) the installation
process and suggests the most probable solutions.



Vim Complains about Non-unicode Encoding
----------------------------------------

**Problem**: Vim produces errors which are clearly related to the encoding
being something other than Unicode.

For example, the YCM plugin spits out something like the following line:

```
YouCompleteMe unavailable: requires UTF-8 encoding. Put the line 'set encoding=utf-8' in your vimrc.
```

However, even with `set encoding=utf-8` the errors persist.

**Reason**: enabling Unicode at the Vim level is not enough. There may be some
mess with encodings at the terminal level and so on, making Vim misbehave.

**Solution**: it is better to use Unicode system-wide. This is typically done
by setting the `LANG` variable to the appropriate value at the topmost level,
e.g. in `systemd`-based systems you may define it in the `/etc/locale.conf`
file:

```
$ cat /etc/locale.conf
LANG=en_US.UTF-8
```
