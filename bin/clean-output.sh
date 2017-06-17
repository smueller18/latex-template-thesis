#!/bin/sh

output="output"
# all folders with leading zero
folders="./0*"

# delete complete output folder
rm -rf $output

# create output folder structure
mkdir -p $output

for f in $folders
do
    if [ -d $f ]; then
        mkdir -p $output/$(basename $f)
    fi
done
