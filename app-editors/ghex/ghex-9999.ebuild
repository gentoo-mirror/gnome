# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"
GCONF_DEBUG="no"

inherit gnome2
if [[ ${PV} = 9999 ]]; then
	inherit gnome2-live
fi

DESCRIPTION="GNOME hexadecimal editor"
HOMEPAGE="https://live.gnome.org/Ghex"

LICENSE="GPL-2+ FDL-1.1+"
SLOT="2"
if [[ ${PV} = 9999 ]]; then
	KEYWORDS=""
else
	KEYWORDS="~amd64 ~arm ~ppc ~x86 ~x86-interix ~amd64-linux ~x86-linux"
fi
IUSE=""

RDEPEND="
	>=dev-libs/atk-1
	>=dev-libs/glib-2.31.10:2
	>=x11-libs/gtk+-3.3.8:3
"
DEPEND="${RDEPEND}
	>=dev-util/intltool-0.41.1
	>=sys-devel/gettext-0.17
	app-text/yelp-tools
	virtual/pkgconfig
"
