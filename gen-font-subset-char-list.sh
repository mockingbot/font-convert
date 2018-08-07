#!/usr/bin/env bash

echo "gen subset"
pyftsubset "$1"\
  --text-file=./char-list.txt\
  --with-zopfli

echo "gen subset woff"
pyftsubset "$1"\
  --text-file=./char-list.txt\
  --flavor=woff\
  --with-zopfli

echo "gen subset woff2"
pyftsubset "$1"\
  --text-file=./char-list.txt\
  --flavor=woff2\
  --with-zopfli

echo "done"
