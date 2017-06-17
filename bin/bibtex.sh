#!/bin/sh

cp -v *.bib output/
cp -v *.bst output/

cd output
bibtex $1
cd ..
