#!/bin/bash -e -o pipefail

source ~/utils/utils.sh


sleep 3600

echo "##[group]log show"
sudo log show --last 5m
echo "##[endgroup]"

