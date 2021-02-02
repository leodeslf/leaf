#!/bin/bash
title="# Table of contents\n\n"
content=$(cat content)
printf "$title$content\n" >README.md
printf "$title* [Table of contents](README.md)\n\n$content\n" >SUMMARY.md
