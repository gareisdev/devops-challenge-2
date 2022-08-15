#!/bin/bash

url="https://es.wikipedia.org/wiki/DevOps"

#Word to search
word=$1

# Save content on a file
echo "Download file . . ."
curl --silent -o wikipedia.html $url

echo "Lines:"
grep -inH  "$word" wikipedia.html | cut -f2 -d:

