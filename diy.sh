#!/bin/bash

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/xiaorouji/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/kenzok8/small-package --depth=1 clone/ssr-plus

# Update packages
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall clone/ssr-plus/luci-app-ssr-plus feeds/luci/applications/

# Clean packages
rm -rf clone
