#!/bin/bash -ex

cross build --target x86_64-unknown-linux-gnu --release
rm -Ir /tmp/devcaders-zipper /tmp/devcaders-zipper.zip || true
mkdir -p /tmp/devcaders-zipper/publish
cp -rv target/x86_64-unknown-linux-gnu/release/devcaders assets /tmp/devcaders-zipper/publish
cp assets/banner.png assets/icon.png /tmp/devcaders-zipper
cd /tmp/devcaders-zipper
zip -r /tmp/devcaders-zipper.zip *
