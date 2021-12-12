#!/bin/bash

function feedback() {
  echo -e "🌱 $task: \e[34mStarted...\e[39m"
}

function success() {
  echo -e "🌱 $task: \e[92mFinished\e[39m"
}

function error() {
  echo -e "🌱 $task: \e[91mFailed!\e[39m" && fail=true
}

rm -r -f docs && mkdir docs

layout="---\nlayout: default\n---\n"
fail=false

task="Building"
feedback

# 1)
task="Backup"
feedback
cp -r engg ui ux backup || error
"$fail" && exit 1
success

# 2)
task="Homepage"
toc="$(cat toc)"
feedback
# 2.1) Use file name as index's folder name for each URL
# 2.2) Add layout
printf -- "$layout$(sed 's/.md/\//g' <<<$toc)" >index.md || error
"$fail" && exit 1
success

# 3)
task="Content"
feedback
# 3.1) Add one level to the heading (keeping comments in code blocks)
# 3.2) Add one level to the first heading
# 3.3) Add layout
find engg ui ux -type f -exec sed -i -e 's/## /### /g' -e '1 s/# /## /' -e "1i$layout" {} \; || error
"$fail" && exit 1
success

# 4)
task="11ty build"
feedback
eleventy || error
"$fail" && exit 1
success

# 5)
task="Remove garbage"
feedback
rm -r engg ui ux index.md || error
"$fail" && exit 1
success

# 6)
task="Restore originals"
feedback
mv backup/engg backup/ui backup/ux ./ || error
"$fail" && exit 1
success

while getopts ":g" opt; do
  case $opt in
  g | git)
    {
      git add docs
      git commit -m "Build, update, and commit from script."

      # 7)
      task="Push changes"
      feedback
      git push || error
      "$fail" && exit 1
      success
    }
    ;;
  esac
done

task="Building"
success
