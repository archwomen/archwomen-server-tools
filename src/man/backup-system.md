NAME
====

backup-system - backup system files to a git repository

SYNOPSIS
========

**backup-system** [_name_]

DESCRIPTION
===========

Backup system files to a git repository and push them to gitolite for quick mirroring. The files backed up are those in /etc, user cron, pacman log, gitolite rc, gitolite logs, and ssh stuff for user git.

The option _name_ is used to set the name of the git repository. By default, the name is taken from __hostname(1)__.

SETUP
=====

Create a git repository in /var/git/non-bare/_$name_-system-backup.git. It should be owned by user git. Configure user.name and user.email. Suggested values are "backup" and "admin@archwomen.org".

Prepare gitolite by adding the repository to gitolite-admin. Create a private/public keypair for user git if one does not exist and add the public key to gitolite. In the repository, create a remote named gitolite which points to git@127.0.0.1:_$name_-system-backup.
