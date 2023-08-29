#!/usr/bin/env bash

set -a
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPTS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/scripts
set +a

mkdir -p log
( bash "$SCRIPT_DIR/scripts/01-configure.sh" )|& tee log/configure.log
( bash "$SCRIPT_DIR/scripts/02-install-pkg.sh" )|& tee log/install.log
( bash "$SCRIPT_DIR/scripts/03-post-install.sh" )|& tee log/post-install.log
