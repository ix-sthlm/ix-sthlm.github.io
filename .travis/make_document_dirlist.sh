#!/usr/bin/env bash

DIR=$1

# Die on missing root directory
if ! test -d $DIR; then
    echo "Directory $DIR doesn't exist" >&2
    exit 1
fi

htmlHeader="<ul>"
htmlFooter="</ul>"

# Loop through all directories
for directory in $(find $DIR -type d); do
    html=$htmlHeader

    for file in $(ls -a $directory); do
        html=$html"<li><a href=\"$file\">$file</a></li>"
    done

    html=$html$htmlFooter

    echo "Writing $directory/index.html" >&2
    echo $html > $directory/index.html
done
