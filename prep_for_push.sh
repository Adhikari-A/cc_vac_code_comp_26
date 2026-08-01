#!/bin/bash

# This scripts preps before pushing to the remote repo

git status
echo ============================
rm -vrf index.html index-speaker.html index_files .quarto
echo ============================
quarto render index.qmd
echo ============================
git add index_files/libs/revealjs/dist/theme/quarto-*.css
echo ============================
git status
