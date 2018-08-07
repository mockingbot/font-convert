#!/usr/bin/env bash

echo "gen subset"
pyftsubset "$1"\
  --text-file=./char-list.txt\
  --with-zopfli\
  --no-hinting

echo "gen subset woff"
pyftsubset "$1"\
  --text-file=./char-list.txt\
  --flavor=woff\
  --with-zopfli\
  --no-hinting

echo "gen subset woff2"
pyftsubset "$1"\
  --text-file=./char-list.txt\
  --flavor=woff2\
  --with-zopfli\
  --no-hinting

echo "done"
