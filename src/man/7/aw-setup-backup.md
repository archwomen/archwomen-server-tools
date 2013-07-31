NAME
====

setup backup - guide for setting up backup scripts

DESCRIPTION
===========

Git
---

The git repository should be named something descriptive. Examples are webserver-system-backup and dokuwiki-backup. The directories are owned by **git:git**.

.PD 0

1. sudo -u git mkdir /var/git/non-bare/_$name_.git   
2. cd /var/git/non-bare/_$name_.git
3. sudo -u git git init
4. sudo -u git git config user.name backup
5. sudo -u git git config user.email admin@archwomen.org
6. sudo -u git git remote add gitolite git@127.0.0.1:_$name_

.PD

Gitolite
--------

The gitolite user is backup. The public key is stored in gitolite-admin; the private key is in ~git/.ssh/.

Only the user backup has RW permissions. The group @wheel has only R and no W permissions. No other has any access to the repository.

Hooks/Deployment
-----

Disable checkouts and pushing to Github. Notifications from awbot are fine. A minimal deploy file could be something like this,

    flags=(!GitHub !chkout)
