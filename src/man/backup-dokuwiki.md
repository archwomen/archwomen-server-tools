NAME
====

backup-dokuwiki - backup dokuwiki to a git repository

SYNOPSIS
========

**backup-dokuwiki**

DESCRIPTION
===========

Backup the directories conf, data, and lib/plugins to a git repository and push them to gitolite for quick mirroring.

SETUP
=====

Create a git repository in /var/git/non-bare/dokuwiki-backup.git. It should be owned by user git. Configure user.name and user.email. Suggested values are "backup" and "admin@archwomen.org".

Prepare gitolite by adding the repository to gitolite-admin. Create a private/public keypair for user git if one does not exist and add the public key to gitolite. In the repository, create a remote named gitolite which points to git@127.0.0.1:dokuwiki-backup.
