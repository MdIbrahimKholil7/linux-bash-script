#!/bin/bash

if [ ! -d "./project" ]; then
    mkdir "project"
else
    echo "Directory already exists, skipping..."
fi

cd "project" || exit

touch "notes.txt"

echo "Hello practicing shell" >> "notes.txt"

echo "Checking file permission"

ls -l

echo "Removing write permission for group"

chmod g-w "notes.txt"

echo "Adding execute permission only for root user"

chmod u+x,u-w "notes.txt"

sudo chown root:root "notes.txt"

ls -la "notes.txt"




