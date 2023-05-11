# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

inherit udev user

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
    sys-kernel/armbian-firmware
"

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
  insinto /lib/firmware
  doins -r ${FILESDIR}/firmware/*
}

