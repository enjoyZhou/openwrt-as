#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# sed -i 's/\"#src-git\"/\"src-git\"/g' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# CP conf
cp -rf openwrt-ext/target/linux/ramips/base-files/etc/board.d/01_leds target/linux/ramips/base-files/etc/board.d/
cp -rf openwrt-ext/target/linux/ramips/base-files/etc/board.d/02_network target/linux/ramips/base-files/etc/board.d/
cp -rf openwrt-ext/target/linux/ramips/base-files/lib/ramips.sh target/linux/ramips/base-files/lib/
cp -rf openwrt-ext/target/linux/ramips/dts/routerPi1_32M.dts target/linux/ramips/dts/
cp -rf openwrt-ext/target/linux/ramips/image/mt76x8.mk arget/linux/ramips/image/