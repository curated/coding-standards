#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Usage: $0 <DIRECTORY>\n"
  echo "Create a symlink to .editorconfig at <DIRECTORY>."
  exit 0
fi

if [ ! -d "$1" ]; then
  echo "Error: $1 is not a directory."
  exit 1
fi

SOURCE="$( cd "$(dirname "$0")"; pwd -P )"
ln -s "$SOURCE/.editorconfig" "$1/.editorconfig"
