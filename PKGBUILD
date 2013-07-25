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

build()
{
  # create man pages
  mkdir "$srcdir"/pages
  for m in "$srcdir"/man/*
  do
    p="${m%.md}"
    p="${p##*/}"
    lunamark -t man -X definition_lists -s -d section=1,title="$p",left_footer='archwomen.org',center_header='Arch Women Server Tools' -o "$srcdir"/pages/"$p".1 "$m"
  done
}

package()
{
  install -d -m755 "$pkgdir"/usr/bin/ "$pkgdir"/usr/share/man/man1/

  for s in "$srcdir"/bin/*
  do
    install -m755 "$s" "$pkgdir"/usr/bin/
  done

  for p in "$srcdir"/pages/*
  do
    install -m644 "$p" "$pkgdir"/usr/share/man/man1/
  done
}
