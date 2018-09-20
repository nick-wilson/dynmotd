# dynmotd
Dynamic MOTD for Linux

Some Linux distributions only provide a static message of the day.

This utility has the following specification:
* Puts output to standard error to avoid affecting commands which parse the standard output of the shell.
* Sets an environment variable to avoid being spawned every time a child shell is spawned.
* Is only triggered if the shell is connected to a terminal.

Functionality is provided by adding a script to the /etc/profile.d directory.
Similar functionality could be implemented using PAM scripts.
