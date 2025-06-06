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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone https://github.com/messense/aliyundrive-webdav package/messense
#git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
sed -i '$a src-git mihomo https://github.com/morytyann/OpenWrt-mihomo.git;main' feeds.conf.default
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
mv luci-app-adguardhome package/lean/
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
