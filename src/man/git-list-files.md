NAME
====

git-list-files - list files in a range of git commits given a filter

SYNOPSIS
========

**git-list-files** _filter_ _commit_ [*newer_commit*]

DESCRIPTION
===========

This script is intended to be used from within git hooks (such as the post-receive hook).

The filters are (taken from __git-diff(1)__, search for "diff-filter"),
> (A|C|D|M|R|T|U|X|B)...[\*]

> Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e. regular file, symlink, submodule, ...) changed (T), are Unmerged (U), are Unknown (X), or have had their pairing Broken (B). Any combination of the filter characters can be used. When * (All-or-none) is added to the combination, all paths are selected if there is any file that matches other criteria in the comparison; if there is no file that matches other criteria, nothing is selected.

EXAMPLE
=======

List all files that have been deleted, added, modified, or transformed since the start of the branch history.

    git list-files DAMT 0000 765763
