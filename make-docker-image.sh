#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

function finish {
  echo cleaning up...
  cd "$SCRIPT_DIR"
  rm -rf calysto_scheme
}
trap finish EXIT

echo building docker image...
git clone https://github.com/Calysto/calysto_scheme.git

cd calysto_scheme/docker
docker build . -t calysto-scheme

