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
        uses: actions/checkout@v4

      - name: update tailwindcss
        uses: ZoeyVid/tailwindcss-update@main
        with:
          input: src/input.css
          output: src/output.css
          params: "--minify"
          
      - name: push changes
        run: |
          git add --force src/output.css
          git config user.name "GitHub"
          git config user.email "noreply@github.com"
          git diff-index --quiet HEAD || git commit -sm "tailwindcss-update"
          git push
```
