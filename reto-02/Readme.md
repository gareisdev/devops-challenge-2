# Reto 2

## Ejercicio 1, 2 y 3

```bash
#!/bin/bash

echo "Creating files"
for i in {1..9}; do touch "archiv$i"; done

echo "Removing permissions"
chmod a-rwx archiv*

echo "Adding permissions"
chmod u=rwx,go= archiv1
chmod u=rw,go= archiv2
chmod a=rwx archiv3
chmod u=rwx,g=rw,o=r archiv4
chmod u=rwx,g=r,o= archiv5
chmod u=rx,g=rw,o=r archiv6
chmod u=r,g=,o=x archiv7
chmod u=rw,g=r,o=r archiv8
chmod u=rw,g=rw,o=r archiv9

echo "Results"
ls -l --color archiv* | cut -d" " -f1,12

echo "Updating permissions"
chmod o+r archiv1
chmod u-w archiv2
chmod a-x archiv3
chmod go-r archiv4
chmod g-r,o+wx archiv5
chmod u+w,o-r archiv6
chmod u+w,g+x,o-x,o+w archiv7
chmod u-rw,g-r archiv8
chmod u+rw,g+rw,o+r archiv9

echo "Results"
ls -l --color archiv* | cut -d" " -f1,12
```

> El script se encuentra listo para su ejecucion bajo el nombre de script.sh

## Ejercicio 4

### Medidas de seguridad propuestas
    1. Cambiar los permisos del archivo
    2. Almacenar el archivo dentro de un archivo comprimido protegido con contraseña
    3. Cambiar los permisos del directorio home para que ningun otro usuario pueda acceder a el.

*Directorio home*
Para los grupos y otros, los permisos seran nulos. `chmod u=rwx,go=,o= /home/roxs` 

*Archivo*
Para los grupos y otros, los permisos seran nulos. `chmod u=rwx,go=,o= /home/roxs/Lista_Precios`

