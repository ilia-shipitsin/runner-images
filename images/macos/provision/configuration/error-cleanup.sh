#!/bin/bash -e -o pipefail

source ~/utils/utils.sh

echo "##[group]log show"
sudo log show --last 5m
echo "##[endgroup]"

