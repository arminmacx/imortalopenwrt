#!/bin/bash
cd /home/runner/immortalwrt

sed -i '$a src-git small https://github.com/kenzok8/small.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git proxypkg https://github.com/kenzok8/small-package' feeds.conf.default
# Enter your commands here, e.g.
# echo "Start build!"
make defconfig
