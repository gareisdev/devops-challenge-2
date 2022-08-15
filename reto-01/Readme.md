# Reto 1

## Ejercicio 1
```bash
mkdir -p foo/dummy foo/empty && for n in {1..2}; do touch "foo/dummy/file$n.txt"; done && echo "Me encanta bash\!\!" >> foo/dummy/file1.txt
```

## Ejercicio 2

```bash
cat foo/dummy/file1.txt >> foo/dummy/file2.txt && mv foo/dummy/file2.txt foo/empty
```

## Ejercicio 3

```bash
#!/bin/bash

if [ $# -eq 0 ]
then
        message="Que me gusta bash!!!!"
else
        message=$1
fi

mkdir -p foo/dummy foo/empty && for n in {1..2}; do touch "foo/dummy/file$n.txt"; done && echo $message >> foo/dummy/file1.txt

cat foo/dummy/file1.txt >> foo/dummy/file2.txt && mv foo/dummy/file2.txt foo/empty
```

> El script se encuentra disponible para ser ejecutado bajo el nombre: ejercicio3.sh


## Ejercicio 4

```bash
#!/bin/bash

url="https://es.wikipedia.org/wiki/DevOps"

#Word to search
word=$1

# Save content on a file
echo "Downloading file . . ."
curl --silent -o wikipedia.html $url

echo "Lines:"
grep -inH  "$word" wikipedia.html | cut -f2 -d:
```
> El script se encuentra disponible para ser ejecutado bajo el nombre: ejercicio4.sh
