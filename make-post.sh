#!/bin/bash

mkdir -p posts/$2
pandoc $1 --standalone --template template.html -Vhighlighting-css="" --css 'main.css' -o posts/$2/index.html
