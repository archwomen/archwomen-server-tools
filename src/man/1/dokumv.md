NAME
====

dokumv - rename or move doku pages

SYNOPSIS
========

**dokumv** _old_ _new_

DESCRIPTION
===========

Move a page from _old_ to _new_. Both parameters are given as wiki ids (with ':' separating namespaces from pages). Alternatively one can use '/' in place of ':'. Example, move "foo:bar:baz" to "fubar", `dokumv foo/bar:baz fubar`.

The script is not robust and makes many assumptions. It can error in unexpected ways. Pay attention to the output. Any problems will need to be fixed manually.

There are probably more changes that ought to be done in a move. If you can determine them, please share!

WALK THROUGH
============

Here's an overview of the process followed.

1. Set correct user:group if not set.
2. Ensure files for the new page do not already exist. Do not want to overwrite them.
3. Change backlinks. This isn't automated. Do it manually.
4. Lock pages to prevent editing by others.
5. Replace old wiki id with new one in meta and changes file. The script is dumb. Meta info. is stored in a PHP structure which bash cannot parse on its own. There are cases where blind replacement can replace the wrong things. The user needs to verify each replacement. This is done in vim. The command to replace is run on start. Use 'y' to approve and 'n' to disapprove. When the replacements are finished, enter ':wq' to save and quit.
6. Move meta, changes and indexed files.
7. Move the page itself.
8. Move attic files.
9. Release the lock.
10. Done. If you wish to rebuild indexes you may. Though this is done automatically.
