# Copy additional stuff to working copy after patching
COPYSOURCE := "${THISDIR}/${PN}"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://Aesys-Kernel-Config-Fragment.cfg"
SRC_URI += " file://0001-YYLTYPE-fix.patch"
SRC_URI += " file://0002-Add-TI2562-Driver-Support.patch"

# Manage kernel configuration fragments
DELTA_KERNEL_DEFCONFIG:append = "Aesys-Kernel-Config-Fragment.cfg"

do_patch:append(){

    # AESYS 2414B
    cp "${COPYSOURCE}/aesys_2328a.dts" "${WORKDIR}/git/arch/arm/boot/dts/imx6ull-var-dart-6ulcustomboard-emmc-sd-card.dts"
}