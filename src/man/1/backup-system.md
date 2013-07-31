NAME
====

backup-system - backup system files to a git repository

SYNOPSIS
========

**backup-system** [_name_]

DESCRIPTION
===========

Backup system files to a git repository and push them to gitolite for quick mirroring. The files backed up are those in /etc, user cron, pacman log, gitolite rc, gitolite logs, and ssh stuff for user git.

The option _name_ is used to set the name of the git repository, _name_-system-backup.git. By default, the name is taken from __hostname(1)__. For details on setup, see __aw-setup-backup(7)__.
