#!/bin/bash

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $THIS_DIR/scripts/install-pkgs.sh
source $THIS_DIR/scripts/create-user-build-ghc.sh
