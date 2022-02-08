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
# sed -i '$a src-git lede https://github.com/coolsnowwolf/lede/tree/master/package' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/jell' feeds.conf.default   #19.07 18.06 软件源
sed -i '$a src-git kenzo https://github.com/kenzok8/small-package' feeds.conf.default   # 软件源
# git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
# git clone https://github.com/Thanf-code/luci-app-cpufreq.git package/luci-app-cpufreq
# git clone https://github.com/kenzok8/jell package
git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速
# git clone https://github.com/iamaluckyguy/luci-app-smartinfo.git package/luci-app-smartinfo
git clone https://github.com/erdoukki/luci-app-arpbind.git package/luci-app-arpbind
# git clone https://github.com/zlg98/luci-app-vlmcsd.git package/luci-app-vlmcsd
git clone https://github.com/loryncien/luci-app-sqm.git package/luci-app-sqm
