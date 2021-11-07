#!/usr/bin/env ash
set -euox pipefail

VERSION=$1

rm -rf tmp
mkdir tmp
cd tmp
git clone https://github.com/tmux/tmux.git
cd tmux
git checkout $VERSION
sh autogen.sh
./configure
make
mkdir -p ../../dist
cp tmux ../../dist/
cd ../../
xz -zf dist/tmux
mv dist/tmux.xz dist/tmux-$VERSION.xz
rm -rf tmp

