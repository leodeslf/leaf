#!/bin/bash
content="$(cat content)"
layout="---\nlayout: default\n---\n"
task="Build Docs & Notes"
error=0

echo "📦 $task working..."
# 1) Site's root page
#   1.1) Use file's names as index's root
printf -- "$layout## Table of contents\n$(sed 's/.md/\//g' <<<$content)" >index.md &&
  # 2) Site's content pages
  #   2.1) Create backup
  cp -r notes summs backup &&
  #   2.2) Format files
  #     2.2.1) Add one level to the heading (keeping code blocks' comments)
  #     2.2.2) Add one level to the first heading
  #     2.2.3) Add layout
  find notes summs -type f -exec sed -i -e 's/## /### /g' -e '1 s/# /## /' -e "1i$layout" {} \; &&
  #   2.3) Bulid site
  eleventy &&
  #   2.4) Remove formatted files
  rm -r notes summs &&
  #   2.5) Restore originals
  mv backup/notes backup/summs ./ &&
  echo "📦 $task finished." || error=1

if (($error)); then
  echo "📦 $task failed!" && exit 1
fi

# 3) Check and push changes
while getopts ":g" opt; do
  case $opt in
  g | git)
    {
      task="Add/Commit/Push changes"
      echo "🔃 $task working..."
      #git add . &&
      #  git commit -m "Add/Commit/Push in build script." &&
      #  git push &&
      echo "🔃 $task finished." ||
        echo "🔃 $task failed!"
    }
    ;;
  esac
done
