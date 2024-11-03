#!/usr/bin/env bash
set -eu -o pipefail

# Podlet generates Podman Quadlet files from a Podman command, compose file, or existing object.

cd /usr/local/bin
curl -s -L "https://github.com/containers/podlet/releases/download/v0.3.0/podlet-x86_64-unknown-linux-gnu.tar.xz" -o podlet.xz
xz -d podlet.xz
chmod +x ./podlet
