# Copy additional stuff to working copy after patching
COPYSOURCE := "${THISDIR}/${PN}"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://0001-YYLTYPE-fix.patch"

do_patch:append(){

    # AESYS 2414B
    cp "${COPYSOURCE}/aesys_2328a.dts" "${WORKDIR}/git/arch/arm/boot/dts/imx6ull-var-dart-6ulcustomboard-emmc-sd-card.dts"
}