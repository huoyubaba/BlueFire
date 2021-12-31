#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================


sed -i '$a src-git small https://github.com/kenzok8/small-package' feeds.conf.default
#git clone https://github.com/Thanf-code/luci-app-omcproxy.git package/luci-app-omcproxy
git clone https://github.com/sirpdboy/luci-app-netdata.git package/luci-app-netdata
git clone https://github.com/Thanf-code/luci-app-cpufreq.git package/luci-app-cpufreq
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速
git clone https://github.com/animefansxj/luci-app-smartinfo.git package/luci-app-smartinfo
