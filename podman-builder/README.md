# Podman container for GH Actions

```yaml
jobs:
  build-and-push:
    name: Build and push image
    runs-on: ubuntu-latest
    container:
      image: ghcr.io/aorith/podman-builder:latest
      options: --privileged
```
