#! /usr/bin/bash

WD=$PWD
cd "$WD" || exit
venv=$(basename "$(poetry env info -p)")
venvPath=$(dirname "$(poetry env info -p)")

jq --null-input \
  --arg venv "$venv" \
  --arg venvPath "$venvPath" \
  '{ "venv": $venv, "venvPath": $venvPath }' \
  > pyrightconfig.json
