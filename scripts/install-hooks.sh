#!/bin/bash

echo "Installing hooks..."

GIT_DIR=$(git rev-parse --git-dir)

ln -s ../../scripts/pre-push.sh $GIT_DIR/hooks/pre-push
echo "Done!"
