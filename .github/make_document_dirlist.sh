#!/usr/bin/env bash

DIR=$1

# Die on missing root directory
if ! test -d $DIR; then
    echo "Directory $DIR doesn't exist" >&2
    exit 1
fi

htmlHeader="<!DOCTYPE HTML>
<html>
  <head>
    <title>Index of DIRPLACEHOLDER</title>
    <style>body{margin:40px auto;max-width:650px;line-height:1.6;font-size:18px;color:#444;padding:0 10px}h1,h2,h3{line-height:1.2}</style>
  </head>
  <body>
    <h1>Index of DIRPLACEHOLDER</h1>
    <ul>"
htmlFooter="</ul></body></html>"

# Loop through all directories
for directory in $(find $DIR -type d); do
    html=$(echo $htmlHeader | sed "s~DIRPLACEHOLDER~$directory~g")

    for file in $(ls -a $directory); do
        html=$html"<li><a href=\"$file\">$file</a></li>"
    done

    html=$html$htmlFooter

    echo "Writing $directory/index.html" >&2
    echo $html > $directory/index.html
done
