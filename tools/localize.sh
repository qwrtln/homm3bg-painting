#!/usr/bin/env bash

LANGUAGE=$1
shift
sed -i 's/language: en/language: '"$LANGUAGE"'/' mkdocs.yml

for file in $(find docs/ -name "*$LANGUAGE.md"); do
  mv "$file" "${file::-5}md"
done
