#!/usr/bin/env bash

set -o errexit
set -o errtrace

TEMPLATE_DIR=${HOME}/"Library/Developer/Xcode/Templates/File Templates/Source"
TEMPLATE_NAME="Empty Swift File.xctemplate"

if [ ! -d "$TEMPLATE_DIR" ]; then
  echo "Didn't find a directory for the templates, so creating it..."
  mkdir -p "${TEMPLATE_DIR}"
  echo "Created $TEMPLATE_DIR"
fi

echo "Copying template files..."
cp -rf "./$TEMPLATE_NAME" "$TEMPLATE_DIR"
echo "Done."
