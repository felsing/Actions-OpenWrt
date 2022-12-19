#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.10/g' package/base-files/files/bin/config_generate

# Add autocore support for armvirt
sed -i 's/TARGET_rockchip/TARGET_rockchip\|\|TARGET_armvirt/g' package/lean/autocore/Makefile

#Fix aarch64 python3(temporary)
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=4.8/g' tools/sed/Makefile
#sed -i 's/PKG_HASH:=.*/PKG_HASH:=f79b0cfea71b37a8eeec8490db6c5f7ae7719c35587f21edb0617f370eeff633/g' tools/sed/Makefile
