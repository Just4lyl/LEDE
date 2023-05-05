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
sed -i 's/firewall/firewall4/g' include/target.mk
sed -i 's/+firewall/+uci-firewall/g' feeds/luci/applications/luci-app-firewall/Makefile
#sed -i 's/odhcpd-ipv6only/odhcpd/g' include/target.mk
#sed -i 's/dnsmasq/dnsmasq-full/g' include/target.mk
sed -i 's/2:-dhcp/2:-pppoe/g' package/base-files/files/lib/functions/uci-defaults.sh
sed -i 's/username/07159432516/g' package/base-files/files/bin/config_generate
sed -i 's/07159432516/username/' package/base-files/files/bin/config_generate
sed -i 's/password/134520/g' package/base-files/files/bin/config_generate
sed -i 's/134520/password/' package/base-files/files/bin/config_generate
sed -i 's/5.15/5.4/' package/base-files/files/bin/config_generate
