#!/bin/bash

./scripts/rubocop.sh &&
./scripts/brakeman.sh &&
./scripts/traceroute.sh

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
   exit 1
fi
