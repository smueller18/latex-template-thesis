#!/bin/sh

latex -halt-on-error -synctex=1 -interaction=nonstopmode -output-directory output $1
