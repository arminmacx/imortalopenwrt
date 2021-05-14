#!/bin/bash

git clone "https://github.com/immortalwrt/immortalwrt.git" --branch "openwrt-19.07" --single-branch "immortalwrt"
sed -i '$a src-git small https://github.com/kenzok8/small.git' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git proxypkg https://github.com/kenzok8/small-package' feeds.conf.default
pushd "immortalwrt"; ./scripts/feeds update -a; ./scripts/feeds install -a; popd
