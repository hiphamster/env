Zsh Configuration Files
=======================

Zsh has several system-wide and user-local configuration files.

System-wide configuration files are installation-dependent but are installed
in */etc* by default.

User-local configuration files have the same name as their global counterparts
but are prefixed with a dot (hidden). Zsh looks for these files in the path
stored in the `$ZDOTDIR` environmental variable. However, if said variable is
not defined, Zsh will use the user's home directory.

File Descriptions
-----------------

The configuration files are read in the following order:

  01. /etc/zshenv
  02. ~/.zshenv
  03. /etc/zprofile
  04. ~/.zprofile
  05. /etc/zshrc
  06. ~/.zshrc
  07. /etc/zlogin
  08. ~/.zlogin
  09. ~/.zlogout
  10. /etc/zlogout

### zshenv

This file is sourced by all instances of Zsh, and thus, it should be kept as
small as possible and should only define environment variables.

### zprofile

This file is similar to zlogin, but it is sourced before zshrc. It was added
for [KornShell][1] fans. See the description of zlogin bellow for what it may
contain.

*zprofile* and *zlogin* are not meant to be used concurrently 

### zshrc

This file is sourced by interactive shells. It should define aliases,
functions, shell options, and key bindings.

This is the main Oh My Zsh configuration file.

### zlogin

This file is sourced by login shells after zshrc, and thus, it should contain
commands that need to execute at login. It is usually used for messages such as
[fortune][2], [msgs][3], or for the creation of files.

This is not the file to define aliases, functions, shell options, and key
bindings. It should not change the shell environment.

### zlogout

This file is sourced by login shells during logout. It should be used for
displaying messages and the deletion of files.
