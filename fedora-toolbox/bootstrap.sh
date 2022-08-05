#!/usr/bin/env bash
set -eux -o pipefail

dnf update -y
dnf install -y podman podman-compose dnf-plugins-core
dnf clean all

rm -rf /.setup
