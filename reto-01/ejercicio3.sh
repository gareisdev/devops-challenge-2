#!/bin/bash

# Ejercicio 1

if [ $# -eq 0 ]
then
	message="Me encanta bash\!\!"
else
	message=$1
fi

mkdir -p foo/dummy foo/empty && for n in {1..2}; do touch "foo/dummy/file$n.txt"; done && echo $message >> foo/dummy/file1.txt


# Ejercicio 2
cat foo/dummy/file1.txt >> foo/dummy/file2.txt && mv foo/dummy/file2.txt foo/empty
