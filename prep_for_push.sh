#!/bin/bash

# This script prepares the generated files before pushing.

git status
echo ============================

rm -vrf index.html index-speaker.html index_files .quarto

echo ============================

quarto render index.qmd

echo ============================

git add -A -- index.html index-speaker.html index_files

echo ============================

git status
