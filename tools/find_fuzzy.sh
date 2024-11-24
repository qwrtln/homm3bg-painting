#!/usr/bin/env bash

LANGUAGE=$1

find localizations -name "${LANGUAGE}.po" -exec grep --color -nHA3 fuzzy {} \;
