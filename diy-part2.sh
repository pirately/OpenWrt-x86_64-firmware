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

# HaProxy
svn co https://github.com/openwrt/packages/branches/openwrt-19.07/net/haproxy
rm -rf feeds/packages/net/haproxy
mv haproxy feeds/packages/net

# SSR-Plus
git clone https://github.com/fw876/helloworld.git package/luci-app-ssr-plus

# Passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall

# OpenClash
svn co https://github.com/vernesong/OpenClash/branches/master/luci-app-openclash package/luci-app-openclash

# AdguardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

# SmartDNS
mkdir -p package/SmartDNS
git clone https://github.com/pymumu/openwrt-smartdns.git package/SmartDNS/openwrt-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/SmartDNS/luci-app-smartdns

# koolproxyR
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR

sed -i "s/option bbr '0'/option bbr '1'/g" package/lean/luci-app-flowoffload/root/etc/config/flowoffload