# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Utility to download media contents from the web"
HOMEPAGE="https://you-get.org"
SRC_URI="https://github.com/soimort/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test"
PROPERTIES="test_network"

RDEPEND="
	media-video/ffmpeg
	dev-python/dukpy[${PYTHON_USEDEP}]

"

distutils_enable_tests unittest
