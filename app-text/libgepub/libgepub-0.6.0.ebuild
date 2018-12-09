# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit gnome.org meson xdg-utils

DESCRIPTION="GObject based library for handling and rendering epub documents"
HOMEPAGE="https://git.gnome.org/browse/libgepub"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+introspection"

RDEPEND="
	net-libs/webkit-gtk:4
	net-libs/libsoup:2.4
	dev-libs/glib:2
	dev-libs/libxml2:2
	app-arch/libarchive
	x11-libs/gtk+:3
	introspection? ( >=dev-libs/gobject-introspection-1.30:= )
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
"

src_prepare() {
	default
	xdg_environment_reset
}

src_configure() {
	meson_src_configure \
		$(meson_use introspection)
}
