#!/usr/bin/env bash

set -o xtrace
echo "Command echoing on"

set +o xtrace
echo "Command echoing off"

set -x
echo "Command echoing on"

set +x
echo "Command echoing off"

exit 0
