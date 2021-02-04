#!/bin/bash

echo "Running brakeman"
bundle exec brakeman --skip-files /node_modules/@rails/webpacker/lib/webpacker/compiler.rb
