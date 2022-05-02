#!/bin/bash

layout="---\nlayout: default\n---"

# 1. Clean/Reset prebuild & build dirs.
rm -r -f prebuild/* build/*
# 2. Copy src files into prebuild dir to preprocess them.
cp -r src/* prebuild

files="$(find prebuild -type f)"
for file in $files; do
  # 2.1 Shift headers +1.
  # 2.2 Add layout with front matter.
  sed -i -e 's/## /### /g' -e '1 s/# /## /' -e "1i$layout" $file
done

# 3 Add pass-through-copy files into prebuild dir.
cp -r index.md 404.md _includes style prebuild

# 4 Run eleventy.
eleventy
