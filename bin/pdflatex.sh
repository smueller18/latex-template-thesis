#!/bin/sh

pdflatex -synctex=1 -interaction=batchmode -output-directory output $1
