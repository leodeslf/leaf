#!/bin/bash
title="# Table of contents\n\n"
content="$(cat content)\n"
printf "$title$content" >README.md
printf "$title* [Table of contents](README.md)\n\n$content" >SUMMARY.md
