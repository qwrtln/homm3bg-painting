#!/usr/bin/env bash

LANGUAGE=$1

find docs -name "*pl.md" -delete
find docs -name "*ru.md" -delete

sed -i 's/pl ru/'"$LANGUAGE"'/' po4a.cfg
po4a --no-update po4a.cfg
git restore po4a.cfg

for file in $(find docs/ -name "*$LANGUAGE.md"); do
  echo "Moving file: $file -> ${file::-5}md"
  mv "$file" "${file::-5}md"
done