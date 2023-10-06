#!/bin/bash -e -o pipefail

brew install httpd
sleep 60
sudo sed -Ei '' 's/Listen .*/Listen 80/' $(brew --prefix)/etc/httpd/httpd.conf

invoke_tests "WebServers" "Apache"
