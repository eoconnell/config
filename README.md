# Setup

These instructions assume a fresh Linux system with an existing user.

Add user to sudoers
```
epo$ su -
root# adduser epo sudo
```
logout and log back in to apply

```
# install initial dependencies
epo$ sudo bin/init
# setup the workstation
epo$ bin/setup
```
