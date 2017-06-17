#!/bin/sh

makeindex -s output/$1.ist output/$1.slo -o output/$1.sls
makeindex -s output/$1.ist output/$1.acn -o output/$1.acr
makeindex -s output/$1.ist output/$1.glo -o output/$1.gls
makeindex -s output/$1.ist output/$1.slo -o output/$1.sls
