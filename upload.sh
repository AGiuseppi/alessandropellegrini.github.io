#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 username"
    echo "         username: il nome utente del server mediante il quale fare la sincronizzazione"
    exit -1
fi

jekyll build

find _site -type f -exec chmod 604 {} \;
find _site -type d -exec chmod 705 {} \;

rsync -avz -e ssh --delete _site/ $1@users.diag.uniroma1.it:./public_html/
