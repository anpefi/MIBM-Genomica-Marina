#Genómica marina

Este repositorio contiene los materiales necesarios para las prácticas del curso **Genómica marina** del [**Máster Interuniversitario en Biología Marina"](http://masterbiologiamarina.uvigo.es/)


# EN CONSTRUCCIÓN

## Uso de una imagen Docker para el desarrollo de las prácticas

Dado que el objetivo de estas prácticas es adquirir unas nociones básicas que permitan desenvolverse con soltura en el análisis de secuencias genómicas, y que para ello es fundamental que se desarrolle en un entorno Linux con las dependencias instaladas, la mejor forma de llevarlas a cabo es mediante un contenedor de [Docker](https://es.wikipedia.org/wiki/Docker_(software). Así, se ha diseñado una image de Docker que contiene todos los programas y datos necesarios para el desarrollo de estas prácticas y los alumnos sólo tienene que encargarse de instalar Docker en su sistema operativo 

## Instalación de Docker

Windows: https://docs.docker.com/docker-for-windows/install/#download-docker-for-windows

Mac: https://docs.docker.com/docker-for-mac/install/

## Ejecutar el contenedor Docker del curso

Ejecutamos docker desde un directorio/carpeta local que utilizaremos para guardar los resultados que obtengamos.

```bash
docker run -ti -v $PWD:/home/user curso-genomica
```