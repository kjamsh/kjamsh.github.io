#!/bin/bash

if [[ -z $1 || -z $2 ]]; then
  echo "Usage: make-post.sh <src file> <dst folder>"
  exit 1
fi

mkdir -p $2
pandoc $1 --standalone --template template.html -Vhighlighting-css="" --css 'main.css' -o $2/index.html
