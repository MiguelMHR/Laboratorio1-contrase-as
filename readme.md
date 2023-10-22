# Laboratorio 1 - Contraseñas - Ingeniería de la Ciberseguridad

## Introducción:

En este repositorio contamos con 3 carpetas principales junto con el *requirements.txt* (instalador de las librerías necesarias de python) y este readme:

- **datasets**: contiene los scripts de python usando 2 estrategias de hasheo distintas, MD5 y SHA256, y los recursos creados a partir de cada script (hashes y contraseñas en txt) asociado a la longitud de la contraseña (dataset_1 al dataset_5) encapsulados en cada tipo de dataset:

  1. *letras minúsculas*
  2. *letras mayúsculas*
  3. *dígitos*
  4. *ascii (letras, dígitos y caracteres)*
  5. *palabras de un diccionario:*

     1. contraseñas de palabas de max 7 y min 3 caracteres
     2. contraseñas de palabras de max 7 que no empiecen por 't', 'a', 's', 'c', 'b', 'p', 'm', 'h', 'f' y 'r'
     3. contraseñas de palabras de max 7 caractere que comiencen por vocal
     4. contraseñas de palabras de max 7 que acaben por las letras menos comunes en inglés
     5. contraseñas de palabras de max 7 que contengan combinaciones de solo consonantes
- **run:** contiene la template del script principal usado para obtener los resultados de las ejecuciones y un script de python que permite analizar el *john.log* para obtener tiempos y porcentajes, usado en el script
- **stats:** contiene los resultados obtenidos usando el script de la carpeta **run**

## Como instalar las librerías de nuestro trabajo

Debemos instalar python3 en Linux con el siguiente comando:

`sudo apt install python3 && sudo apt install python3-pip`

Debemos instalar las librerías del archivo requirements.txt

`pip install -r requirements.txt`

## Recomendación

A la hora de trabajar en python, para no mezclar dependencias ni librerías instaladas evitando así posibles conflictos, es recomendable usar un venv para aislar los proyectos python

Primero, debemos instalar un paquete que nos permite la manipulación del venv:

`sudo apt install python3-venv`

Se puede crear un venv mediante el siguiente comando:

`python3 -m venv .venv`

Para poder acceder al venv, se debe introducir el siguiente comando:

`source ./.venv/bin/activate`

Para poder salir del venv, se debe introducir lo siguiente:

`deactivate`
