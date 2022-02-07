#!/bin/bash

# 1. Clean/Reset prebuild & build dirs.
# 2. Copy src files into prebuild dir to preprocess them.
#   2.1 Shift headers +1.
#   2.2 Add layout with front matter.
# 3 Add pass-through-copy files into prebuild dir.
# 4 Run eleventy.

layout="---\nlayout: default\n---"

rm -r -f prebuild/* build/*

cp -r src/* prebuild
files="$(find prebuild -type f)"
for file in $files; do
  sed -i -e 's/## /### /g' -e '1 s/# /## /' -e "1i$layout" $file
done

cp -r index.md 404.md _includes style prebuild
eleventy
