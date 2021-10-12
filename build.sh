#!/bin/bash

content="$(cat content)"
layout="---\nlayout: default\n---\n"
toc="# Table of contents\n"

# GitHub's readme:
echo -e "$toc\n$content" >README.md

# GitBook's structure (aside nav/TOC):
echo -e "$toc\n* [Table of contents](README.md)\n\n$content" >SUMMARY.md

# 11ty's static index page:
# Delete empty lines;
# Add one level to the list;
# Use 2nd titles as 1st level of the list;
# Use file name as index's folder.
printf -- "$layout#$toc$(sed -e '/^$/d' -e 's/* /  * /g' -e 's/## /* /g' -e 's/.md/\//g' <<<$content)" >index.md
# Create backup.
cp -r notes summs backup
# Add one level to the heading (avoiding adding extra hashes to bash comments);
# Add one level to the first heading;
# Add basic layout.
find notes summs -type f -exec sed -i -e 's/## /### /g' -e '1 s/# /## /' -e "1i$layout" {} \;
# Bulid site. 
eleventy
# Remove modified files.
rm -r notes summs
# Restore original files from backup.
mv backup/notes backup/summs ./

echo "Docs & Notes done!"
