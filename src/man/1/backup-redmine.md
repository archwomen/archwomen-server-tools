NAME
====

backup-redmine - backup redmine to a git repository

SYNOPSIS
========

**backup-redmine**

DESCRIPTION
===========

Save a mysqldump and important files of redmine to a git repository and push them to gitolite for quick mirroring. The logs are not backed up as they are much too large. When redmine is stopped for the last time, save the logs for a final commit.

The git repository is named redmine-backup.git. For details on setup, see __aw-setup-backup(7)__.
