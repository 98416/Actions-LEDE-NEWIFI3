#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

# 更改默认主题为Argon
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' package/feeds/luci/luci/Makefile
git clone https://github.com/jerrykuku/luci-theme-argon.git package/mine/luci-theme-argon_new
sed -i 's/luci-theme-bootstrap/luci-theme-argon_new/g' package/feeds/luci/luci/Makefile

# 复杂的AdGuardHome的openwrt的luci界面
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/mine/luci-app-adguardhome

# KPR plus+
git clone https://github.com/Ameykyl/luci-app-koolproxyR.git package/mine/luci-app-koolproxyR

# Server酱
git clone https://github.com/tty228/luci-app-serverchan package/mine/luci-app-serverchan

# 硬盘监控
git clone https://github.com/project-openwrt/luci-app-smartinfo package/mine/luci-app-smartinfo
mv package/mine/luci-app-smartinfo/luci-dir/applications/luci-app-smartinfo package/mine/luci-app-smartinfo/

# ssr-plus-jo
# git clone https://github.com/Ameykyl/luci-app-ssr-plus-jo.git package/mine/luci-app-ssr-plus-jo/luci-app-ssr-plus-jo
# git clone https://github.com/Ameykyl/my.git package/mine/luci-app-ssr-plus-jo/my

# FileBrowser
git clone https://github.com/project-openwrt/FileBrowser package/mine/FileBrowser

# 网易云音乐
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic.git package/mine/luci-app-unblockneteasemusic

# 网易云音乐mini
git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic-mini package/mine/luci-app-unblockneteasemusic-mini

# 管控上网行为
git clone https://github.com/destan19/OpenAppFilter package/mine/OpenAppFilter

# Rclone-OpenWrt
git clone https://github.com/ElonH/Rclone-OpenWrt package/mine/Rclone-OpenWrt
