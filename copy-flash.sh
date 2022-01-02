#!/bin/bash

function usage {
    echo "Usage: ${0##*/} DESTPATH"
    echo
    echo "DESTPATH is the path where you mounted your EMPTY,"
    echo "MEGA65 formatted, SD Card."
    exit 1
}

if [[ $# != 1 ]]; then
    usage
fi

DEST=${1%/} # remove trailing slash

if [[ ! -d $DEST ]]; then
    usage
fi

shopt -s nullglob
EXISTING=$(echo $DEST/*)
if [[ "x$EXISTING" != "x" ]]; then
    echo "DESTPATH is not empty!"
    echo
    ls
    echo
    echo "DELETE EVERYTHING?"
    read DEL
    if [[ $DEL == "DELETE EVERYTHING" ]]; then
        for file in $EXISTING; do
            echo "deleting ${file}"
            mv "$file" "$DEST/TODEL.TXT"
            rm -f "$DEST/TODEL.TXT"
        done
    else
        exit 2
    fi
fi

FILES=`cat sorted-files.txt`
for file in $FILES; do
    echo "copying $file"
    cp $file $DEST
done
sync

