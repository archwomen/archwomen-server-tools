NAME
====

aw-housekeeping - run housekeeping chores

SYNOPSIS
========

**aw-housekeeping** [__-c__] [_profile_]

DESCRIPTION
===========

Run housekeeping chores listed in a profile. By default, the profile name is taken from the hostname but can be set in the command arguments. Each line in a profile is a command which is evaluated.

The option __-c__ causes the script to set its envars by sourcing _/etc/profile_.

USAGE
=====

Best run daily from a cron job.

Example entry in crontab to run at 6 am everyday.

    0 6 * * * /usr/bin/aw-housekeeping -c

EXIT STATUS CODES
=================

Error messages are put on stderr. The following status codes are returned by the script.

0
: Successful return though not necessarily successful run.
1
: Script run as a user other than root. The script needs root permissions to run. (Note, suid root is not advised.)
2
: A profile name was not supplied in the arguments and could not be derived from hostname.
3
: The profile does not exist or the profile is something other than a regular file.
4
: Do not have read permissions of the profile.

FILES
=====

/etc/housekeeping/*
