#!/bin/bash

# Sitúate en tu directorio personal de usuario
cd ~/

# Crea un directorio llamado "nueva_carpeta"
mkdir nueva_carpeta

# Accede a esta carpeta que acabas de crear
cd $_

# Crea un archivo en este directorio y llámalo archivo_nuevo.txt
touch archivo_nuevo.txt

# Cámbiale el nombre a este último archivo que has creado y llámalo archivo_viejo.txt
mv archivo_nuevo.txt archivo_viejo.txt

# Añade el texto "Nueva línea de texto" al archivo desde el terminal
echo "Nueva linea de texto" > archivo_viejo.txt

# Cambia los permisos de este archivo para que todos los usuarios puedan leer, escribir y ejecutarlo
chmod a+rwx archivo_viejo.txt

# Sube un nivel de directorio, es decir, vuelve al directorio anterior
cd ..

# Crea un enlace al archivo que creaste en esta carpeta llamado "enlace.ln"
ln -s nueva_carpeta/ enlace_nuevo.ln

# Elimina el directorio "nueva_carpeta" y los archivos que contenga
rm -r nueva_carpeta