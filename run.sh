#!/bin/sh

apk add --no-cache git
wget https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-linux-x64-musl  -O /usr/local/bin/tailwindcss
chmod +x /usr/local/bin/tailwindcss
tailwindcss --input "$INPUT_INPUT" --output "$INPUT_OUTPUT" "$INPUT_PARAMS"
