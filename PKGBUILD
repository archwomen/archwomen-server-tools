# Maintainer: fsckd <fsckdaemon -at- gmail.com>

pkgname=archwomen-server-tools
pkgver=1
pkgrel=1
pkgdesc="Arch Linux Women server tools"
arch=('any')
url="archwomen.org"
license=('GPL')
depends=('git')
makedepends=('lunamark-standalone-git')
optdepends=('rsync' 'mysql-clients') # for aw-data-backup
backup=('etc/housekeeping/webserver')

build()
{
  # create man pages
  mkdir "$srcdir"/pages
  for ms in "$srcdir"/man/*
  do
    for m in "$srcdir"/man/"$ms"/*.md
    do
      p="${m%.md}"
      p="${p##*/}"
      lunamark -t man -X definition_lists -s -d section="$ms",title="$p",left_footer='archwomen.org',center_header='Arch Women Server Tools' -o "$srcdir"/pages/"$ms"/"$p"."$ms" "$m"
    done
  done
}

package()
{
  install -d -m755 "$pkgdir"/usr/bin/ "$pkgdir"/usr/share/man/man1/ "$pkgdir"/etc/housekeeping

  for s in "$srcdir"/bin/*
  do
    install -m755 "$s" "$pkgdir"/usr/bin/
  done

  for ms in "$srcdir"/pages/*
    for p in "$srcdir"/pages/"$ms"/*
    do
      install -m644 "$p" "$pkgdir"/usr/share/man/man"$ms"/
    done
  done

  for h in "$srcdir"/housekeeping_profiles/*
  do
    install -m644 "$p" "$pkgdir"/etc/housekeeping
  done
}
