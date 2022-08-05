#!/usr/bin/env bash
set -eux -o pipefail

dnf update -y
dnf install -y $(</.setup/dnf-packages)
dnf clean all

rm -rf /.setup
