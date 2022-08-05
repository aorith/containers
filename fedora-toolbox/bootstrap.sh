#!/usr/bin/env bash

dnf update -y
dnf install -y podman podman-compose dnf-plugins-core
dnf clean all

rm -rf /.setup
