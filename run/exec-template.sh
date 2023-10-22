#!/bin/zsh

# Estrategias:
# 1. Incremental ascii: john-the-ripper --format=raw-md5 --incremental:ascii --min-length=3 --max-length=7 hashed_passwords.txt
# 2. Incremental Alnum: john-the-ripper --format=raw-md5 --incremental:Alnum --min-length=3 --max-length=7 hashed_passwords.txt
# 3. Wordlist rockyou: john-the-ripper --wordlist=/home/midoosh/Descargas/rockyou.txt --format=raw-md5 hashed_passwords.txt
# 4. Wordlist JtR: john-the-ripper --wordlist=/snap/john-the-ripper/610/run/password.lst --format=raw-md5 hashed_passwords.txt
# 5. Wordlist Xato.net: john-the-ripper --wordlist=/home/midoosh/Descargas/xatonet.txt --format=raw-md5 hashed_passwords.txt

################     DATASET FORM X - DATASET Y     ################

# Comando para borrar el john.pot si existe
if [ -f ~/snap/john-the-ripper/current/.john/john.pot ]; then
    rm ~/snap/john-the-ripper/current/.john/john.pot
fi

# Comando para borrar el results.log si existe
if [ -f ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/results.log ]; then
    rm ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/results.log
fi

# Comando para borrar el mean_medium.txt si existe
if [ -f ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/mean_medium.txt ]; then
    rm ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/mean_medium.txt
fi

# Comando para ejecutar john-the-ripper estrategia 5 (por ejemplo) con MD5 con timeout de 10 mins
timeout 600 john-the-ripper --wordlist=/home/midoosh/Descargas/xatonet.txt --format=raw-md5 ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/dsfX_Y_hashed_passwords.txt

# Comando para enseñar los resultados
john-the-ripper --show --format=raw-md5 ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/dsfX_Y_hashed_passwords.txt

# Comando para mover el john.log a resources y cambiar el nombre a results.log
mv ~/snap/john-the-ripper/current/.john/john.log ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/results.log

# Comando para ejecutar script de python media y moda
python3 ~/ClonedRepositories/Laboratorio1-passwords/run/mean_medium.py ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/results.log >> ~/ClonedRepositories/Laboratorio1-passwords/datasets/MD5/dataset_form_X/dataset_Y/resources/mean_medium.txt
