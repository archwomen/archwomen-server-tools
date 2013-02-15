## Scripts and tools for Arch Women's server. ##

To Do:
Documentation
Shell account creation script
Double auth for root

Documentation is scant. See the code for each. They should be simple enough to understand.

To install, copy files somewhere and run makepkg -i.

### gen-git-repo ###

**gen-git-repo is deprecated. Use gitolite to create a new repository.**

usage: 

gen-git-repo "repository name"

What this does:

    1. Creates the directories /var/git/<name>.git and /var/git/<name>.wrk
    2. Changes permissions to git:git and 2775
    3. Initiates bare repository 
    4. Creates ./hooks/post-receive and makes worktree = /var/git/<name>.wrk

### git-list-files ###
