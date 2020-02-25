#!/bin/bash
set -eu -o pipefail
export VERSION=$(awk -F\' '/__version__/{print $2}' ./tokendito/__version__.py)
docker build --build-arg version="${VERSION}" -t tokendito .
