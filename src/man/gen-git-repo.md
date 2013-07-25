NAME
====

gen-git-repo - generate a git repository

SYNOPSIS
========

**gen-git-repo** _repository_

DESCRIPTION
===========

**gen-git-repo is deprecated. Use gitolite to create a new repository.**

This script does the following. It creates the directories /var/git/_repo_.git and /var/git/_repo_.wrk; changes permissions to git:git and 2775; initiates bare repository; and creates ./hooks/post-receive and makes worktree = /var/git/_repo_.wrk.
