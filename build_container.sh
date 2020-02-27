#!/bin/bash
set -eu -o pipefail
export VERSION=${1:-$(awk -F\' '/__version__/{print $2}' ./tokendito/__version__.py)}

for variant in Dockerfile-*; do
    docker build --file "${variant}" --build-arg version="${VERSION}" -t tokendito-"${variant/Dockerfile-/}" .
done
