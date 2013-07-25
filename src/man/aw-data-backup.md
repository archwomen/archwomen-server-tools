NAME
====

aw-data-backup - backup system files to a git repository

DESCRIPTION
===========

Copies files and mysqldump output to a specific git repository, _~git/non-bare/server-generated-data.git_. It then commits and pushes to gitolite.

USAGE
=====

Best run daily from a cron job.

Example entry in crontab.

    0 6 * * * /usr/bin/aw-data-backup
