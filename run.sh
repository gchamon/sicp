#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
docker run -it -p 8000:8000 -v "$SCRIPT_DIR":/app calysto-scheme jupyter notebook --allow-root --ip=0.0.0.0 --port=8000
