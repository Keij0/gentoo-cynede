# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

DESCRIPTION="Static Code Analyzer for C, C++ and C#"
HOMEPAGE="http://www.viva64.com/en/pvs-studio/"
SRC_URI="http://files.viva64.com/${P}-x86_64.tgz"

LICENSE="free-noncomm"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

S="${WORKDIR}/${P}-x86_64"

src_install() {
	cd bin || die "no bin folder"
	dobin plog-converter pvs-studio pvs-studio-analyzer
}
