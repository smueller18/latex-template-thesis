#!/bin/sh

if [ ! -d output ]; then
  bin/clean-output.sh
fi

bin/pdflatex.sh $1
bin/bibtex.sh $1
bin/makeglossaries.sh $1
bin/pdflatex.sh $1
bin/pdflatex.sh $1
