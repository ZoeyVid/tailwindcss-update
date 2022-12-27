#!/bin/sh

apk add --no-cache git
yarn add --no-lockfile -D tailwindcss $INPUT_PLUGINS
yarn run tailwindcss --input $INPUT_INPUT --output $INPUT_OUTPUT $INPUT_PARAMS
git config --global --add safe.directory /github/workspace
git add $INPUT_OUTPUT
