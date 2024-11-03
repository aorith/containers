#!/usr/bin/env bash
set -eu -o pipefail

cd /usr/local/bin
curl -s -L "https://github.com/1player/host-spawn/releases/download/v1.6.0/host-spawn-x86_64" -o host-spawn
chmod +x ./host-spawn
