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
#sed -i 's/192.168.1.1/10.1.10.1/g' package/base-files/files/bin/config_generate

#内核版本是会随着源码更新而改变的，在Lienol/openwrt的源码查看最好，以X86机型为例，源码的target/linux/x86文件夹可以看到有几个内核版本，x86文件夹里Makefile就可以查看源码正在使用什么内核
#修改版本内核（19.07默认使用4.14内核，还有4.19跟4.9的内核，自行选择。这个跟LEDE的有点不一样，这个是修改一行代码的）
#sed -i 's/KERNEL_PATCHVER:=4.14/KERNEL_PATCHVER:=4.19/g' ./target/linux/x86/Makefile  #修改内核版本


# Add Lienol's Packages
git clone --depth=1 https://github.com/Lienol/openwrt-package
rm -rf ../lean/luci-app-kodexplorer

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速
