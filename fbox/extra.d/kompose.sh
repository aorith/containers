#!/usr/bin/env bash
set -eu -o pipefail

# Kompose is a conversion tool for Docker Compose to container orchestrators such as Kubernetes (or OpenShift).

cd /usr/local/bin
curl -s -L "https://github.com/kubernetes/kompose/releases/download/v1.34.0/kompose-linux-amd64" -o kompose
chmod +x ./kompose
