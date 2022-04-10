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
sed -i 's/192.168.1.1/10.1.10.1/g' package/base-files/files/bin/config_generate

# Modify WiFi ON
# sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify default SSID
sed -i 's/ssid=OpenWrt/ssid=BlueFire/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# Modify hostname
sed -i 's/OpenWrt/BlueFire/g' package/base-files/files/bin/config_generate

# 删除默认密码
# sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings

# sed -i 's_downloads.openwrt.org_mirrors.tuna.tsinghua.edu.cn/openwrt_' /etc/opkg/distfeeds.conf
