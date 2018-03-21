#!/bin/bash

EXTENSION=$1

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit
fi

for i in *; do
    BASENAME=$(basename $i .$EXTENSION)
    mv $i $BASENAME
done
