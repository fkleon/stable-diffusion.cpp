#!/bin/sh

set -e

export APP_VERSION=$(git describe --tags)
export GIT_SHA=$(git rev-parse --short HEAD)

docker compose build $@
