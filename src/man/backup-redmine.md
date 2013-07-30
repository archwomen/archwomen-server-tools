NAME
====

backup-redmine - backup redmine to a git repository

SYNOPSIS
========

**backup-redmine**

DESCRIPTION
===========

Save a mysqldump and important files of redmine to a git repository and push them to gitolite for quick mirroring. The logs are not backed up as they are much too large. When redmine is stopped for the last time, save the logs for a final commit.

SETUP
=====

Create a git repository in /var/git/non-bare/redmine-backup.git. It should be owned by user git. Configure user.name and user.email. Suggested values are "backup" and "admin@archwomen.org".

Prepare gitolite by adding the repository to gitolite-admin. Create a private/public keypair for user git if one does not exist and add the public key to gitolite. In the repository, create a remote named gitolite which points to git@127.0.0.1:redmine-backup.
