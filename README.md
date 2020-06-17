# Custom Gitpod Workspace Images with `sudo`

We build customized Gitpod Workspace images for your need, with `sudo` access. We had
to browow stuff from [the official Git repository](https://github.com/gitpod-io/workspace-images)
and configure these images bsed on what we need.

## Installation

### Local Installation

```sh
## Basic image with Apcache and Ngnix included, all without extras.
docker pull madebythepinshub/gp-workspace-full
```

### On your Dockerfile

```Dockerfile
## For our basic image
FROM madebythepinshub/gp-workspace-full
```

## Changelogs

For latest updates in the images, see `CHANGELOG.md`.

## Copyright

Our custom images are licensed under the MIT License, same as the original ones.
