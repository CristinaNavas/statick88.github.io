# Proyecto Web con Docker y Nginx

Este proyecto utiliza Docker y Nginx para servir una aplicación web estática.

## Creación del Dockerfile

Crea un archivo llamado `Dockerfile` en la raíz del proyecto con el siguiente contenido:

```Dockerfile
# Use an official nginx image as a parent image
FROM nginx:latest

# Set the working directory in the container to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the '.' directory (at your Dockerfile's location) into the container
COPY . .
```
## Construcción de la imagen Docker

Para construir una imagen Docker a partir del Dockerfile, ejecuta el siguiente comando en la terminal:
``` bash
docker build -t my-nginx-image .
```
Este comando crea una nueva imagen Docker llamada **my-nginx-imag**e a partir del Dockerfile.

## Creación del contenedor Docker.

Para crear y ejecutar un contenedor a partir de la imagen que acabas de crear, ejecuta el siguiente comando en la terminal:

``` bash
docker run -it --rm -dp 8080:80 -v .:/usr/share/nginx/html --name web my-nginx-image
```
Este comando crea y ejecuta un nuevo contenedor Docker llamado **.** a partir de la imagen **my-nginx-image**. El contenedor sirve la aplicación web en el puerto 8080 y monta el directorio **.** de tu máquina local en el directorio **/usr/share/nginx/html** del contenedor. Esto significa que cualquier cambio que hagas en los archivos de tu directorio **.** local se reflejará en vivo en el contenedor.
