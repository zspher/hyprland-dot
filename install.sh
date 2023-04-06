#!/usr/bin/env bash

set -a
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SCRIPTS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/scripts
CONFIGS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"/configs
set +a

mkdir -p log
# ( bash "$SCRIPT_DIR/scripts/configure.sh" )|& tee log/configure.log
( bash "$SCRIPT_DIR/scripts/install-pkg.sh" )|& tee log/install.log
