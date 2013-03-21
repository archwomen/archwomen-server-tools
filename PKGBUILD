# Maintainer: fsckd <fsckdaemon -at- gmail.com>

pkgname=archwomen-server-tools
pkgver=1
pkgrel=1
pkgdesc="Arch Linux Women server tools"
arch=('any')
url="archwomen.org"
license=('GPL')
depends=('git')
optdepends=('rsync' 'mysql-clients') # for aw-data-backup

package()
{
  install -d -m755 "$pkgdir"/usr/bin/
  for s in "$srcdir"/*
  do
    install -m755 "$s" "$pkgdir"/usr/bin/
  done
}
