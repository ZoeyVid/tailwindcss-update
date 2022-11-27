# tailwindcss-update

```yaml
name: tailwindcss-update

on:
  push:
  schedule:
    - cron:  "0 */6 * * *"
  workflow_dispatch:

jobs:          
  tailwindcss-update:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: update tailwindcss
        uses: ZoeyVid/tailwindcss-update@develop
        with:
          input: src/input.css
          output: src/output.css
          
      - name: push changes
        run: |
          git config user.name "GitHub"
          git config user.email "noreply@github.com"
          git add -A
          git diff-index --quiet HEAD || git commit -sm "tailwindcss-update"
          git push
```
