#!/usr/bin/env ash
set -euox pipefail

VERSION=$1

rm -rf tmp
mkdir tmp
cd tmp
git clone https://github.com/libevent/libevent.git
cd libevent
git checkout release-$VERSION
./autogen.sh
./configure --prefix $(pwd)/dist
make
make install
cd dist
tar -cJf libevent-$VERSION.tar.xz lib include
mkdir -p ../../../dist
cp libevent-$VERSION.tar.xz ../../../dist/
cd ../../../
rm -rf tmp

