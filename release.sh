#!/bin/bash -ex

cargo build --release
mkdir -p /tmp/devcaders-zipper/devcaders
cp -rv target/release/devcaders assets /tmp/devcaders-zipper/devcaders
cd /tmp/devcaders-zipper
zip -r /tmp/devcaders-zipper.zip *
