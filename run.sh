#!/bin/sh

apk add --no-cache git
wget https://github.com/tailwindlabs/tailwindcss/releases/download/v3.2.4/tailwindcss-linux-x64 -O /usr/local/bin/tailwindcss
chmod +x /usr/local/bin/tailwindcss
tailwindcss --input "$INPUT_INPUT" --output "$INPUT_OUTPUT" "$INPUT_PARAMS"
git config --global --add safe.directory /github/workspace
git add --force "$INPUT_OUTPUT"
