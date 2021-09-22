#!/bin/bash

title="# Table of contents\n\n"
content="$(cat content)\n"

# Readme for GitHub.
printf "$title$content" >README.md

# Structure summary for GitBook.
printf "$title* [Table of contents](README.md)\n\n$content" >SUMMARY.md
