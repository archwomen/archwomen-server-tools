## Scripts and tools for Arch Women's server. ##

To Do:

* Documentation
* Shell account creation script
* Double auth for root

Documentation is scant. See the code for each. They should be simple enough to understand.

To install, copy files somewhere and run `makepkg -i`

### gen-git-repo ###

**gen-git-repo is deprecated. Use gitolite to create a new repository.**

usage: 

`gen-git-repo "repository name"`

What this does:

    1. Creates the directories /var/git/<name>.git and /var/git/<name>.wrk
    2. Changes permissions to git:git and 2775
    3. Initiates bare repository 
    4. Creates ./hooks/post-receive and makes worktree = /var/git/<name>.wrk

### git-list-files ###

usage:

`git-list-files "filter" "commit" "optional newer commit"`

What this does:

Lists files in a range of commits given filter. The filters are (taken from _man git-diff_, search for "diff-filter"),
> (A|C|D|M|R|T|U|X|B)...[\*]
> Select only files that are Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), have their type (i.e. regular file, symlink, submodule, ...) changed (T), are Unmerged (U), are Unknown (X), or have had their pairing Broken (B). Any combination of the filter characters can be used. When * (All-or-none) is added to the combination, all paths are selected if there is any file that matches other criteria in the comparison; if there is no file that matches other criteria, nothing is selected.

This script is intended to be used from within git hooks (such as the post-receive hook).

### aw-data-backup ###

usage:

`aw-data-backup`
(run daily from cron)

What this does:

Copies files and mysqldump output to a specific git repository, _~git/non-bare/server-generated-data.git_. It then commits and pushes to gitolite.
