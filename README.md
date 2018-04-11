# electron-builder-docker

Docker image to build Electron apps in CI environments

## Purpose

This image was created specifically for usage with continuous integration systems, and contains the minimum requirements to build an [Electron](https://electronjs.org/) app for Windows & Linux targets. Currently being used with [Bitbucket Pipelines](https://bitbucket.org/product/features/pipelines), but should meet the requirements for most CI systems.

## Details

### Base Image

* [node (carbon-alpine)](https://hub.docker.com/r/library/node/) - The latest Node LTS
  (Carbon) image for Alpine Linux
  
### Additional Packages

* wine
