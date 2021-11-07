#!/usr/bin/env ash
set -euox pipefail

VERSION=$1

rm -rf tmp
mkdir tmp
cd tmp
curl -O https://www.nano-editor.org/dist/v5/nano-$VERSION.tar.gz
tar xf nano-$VERSION.tar.gz
cd nano-$VERSION
./configure \
    --disable-browser \
    --disable-extra \
    --disable-help \
    --disable-justify \
    --disable-mouse \
    --disable-speller \
    --disable-wrapping \
    --disable-nls \
    --enable-utf8
make
mkdir -p ../../dist
cp src/nano ../../dist/
cd ../../
xz -zf dist/nano
mv dist/nano.xz dist/nano-$VERSION.xz
rm -rf tmp
