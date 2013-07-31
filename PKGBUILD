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
  for ms in "$srcdir"/man/*
  do
    ms="${ms##*/}"
    mkdir -p "$srcdir"/pages/"$ms"
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

  find "$srcdir"/bin/ -type f -exec install -m755 {} "$pkgdir"/usr/bin/ \;

  for ms in "$srcdir"/pages/*
  do
    ms="${ms##*/}"
    find "$srcdir"/pages/"$ms"/ -type f -exec install -m644 {} "$pkgdir"/usr/share/man/man"$ms"/ \;
  done

  find "$srcdir"/housekeeping_profiles/ -type f -exec install -m644 {} "$pkgdir"/etc/housekeeping/ \;
}
