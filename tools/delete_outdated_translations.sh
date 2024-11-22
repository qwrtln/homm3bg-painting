#!/usr/bin/env bash

for f in localizations/*; do
  if [[ -z $(find docs/ -name "$f") ]]; then
    echo "Not found original files for $f, deleting"
    rm -rf "localizations/$f"
  fi
done
