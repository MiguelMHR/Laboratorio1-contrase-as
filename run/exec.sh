#!/bin/zsh

# Estrategias:
# 1. Incremental ascii: john-the-ripper --format=raw-md5 --incremental:ascii --min-length=3 --max-length=7 hashed_passwords.txt
# 2. Incremental Alnum: john-the-ripper --format=raw-md5 --incremental:Alnum --min-length=3 --max-length=7 hashed_passwords.txt
# 3. Wordlist rockyou: john-the-ripper --wordlist=/home/midoosh/Descargas/rockyou.txt --format=raw-md5 hashed_passwords.txt
# 4. Wordlist JtR: john-the-ripper --wordlist=/home/midoosh/snap/john-the-ripper/current/wordlist/password.lst --format=raw-md5 hashed_passwords.txt
# 5. queda decidir si JtR con rules o rockyou con rules, el que tenga mejor tiempo

################     DATASET FORM 1 - DATASET 1     ################

# Comando para borrar el john.pot si existe
if [ -f ~/snap/john-the-ripper/current/.john/john.pot ]; then
    rm ~/snap/john-the-ripper/current/.john/john.pot
fi

# Comando para borrar el results.log si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/results.log ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/results.log
fi

# Comando para borrar el mean_medium.txt si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/mean_medium.txt ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/mean_medium.txt
fi

# Comando para ejecutar john-the-ripper estrategia 3 con MD5 con timeout de 10 mins
timeout 600 john-the-ripper --wordlist=/home/midoosh/Descargas/rockyou.txt --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/dsf1_1_hashed_passwords.txt

# Comando para enseñar los resultados
john-the-ripper --show --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/dsf1_1_hashed_passwords.txt

# Comando para mover el john.log a resources y cambiar el nombre a results.log
mv ~/snap/john-the-ripper/current/.john/john.log ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/results.log

# Comando para ejecutar script de python media y moda
python3 ~/ClonedRepositories/IngCiber/lab1_passwords/resources/mean_medium.py ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/results.log >> ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_1/resources/mean_medium.txt

################     DATASET FORM 1 - DATASET 2     ################
# Comando para borrar el john.pot si existe
if [ -f ~/snap/john-the-ripper/current/.john/john.pot ]; then
    rm ~/snap/john-the-ripper/current/.john/john.pot
fi

# Comando para borrar el results.log si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/results.log ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/results.log
fi

# Comando para borrar el mean_medium.txt si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/mean_medium.txt ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/mean_medium.txt
fi

# Comando para ejecutar john-the-ripper estrategia 3 con MD5 con timeout de 10 mins
timeout 600 john-the-ripper --wordlist=/home/midoosh/Descargas/rockyou.txt --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/dsf1_2_hashed_passwords.txt

# Comando para enseñar los resultados
john-the-ripper --show --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/dsf1_2_hashed_passwords.txt

# Comando para mover el john.log a resources y cambiar el nombre a results.log
mv ~/snap/john-the-ripper/current/.john/john.log ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/results.log

# Comando para ejecutar script de python media y moda
python3 ~/ClonedRepositories/IngCiber/lab1_passwords/resources/mean_medium.py ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/results.log >> ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_2/resources/mean_medium.txt

################     DATASET FORM 1 - DATASET 3     ################
# Comando para borrar el john.pot si existe
if [ -f ~/snap/john-the-ripper/current/.john/john.pot ]; then
    rm ~/snap/john-the-ripper/current/.john/john.pot
fi

# Comando para borrar el results.log si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/results.log ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/results.log
fi

# Comando para borrar el mean_medium.txt si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/mean_medium.txt ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/mean_medium.txt
fi

# Comando para ejecutar john-the-ripper estrategia 3 con MD5 con timeout de 10 mins
timeout 600 john-the-ripper --wordlist=/home/midoosh/Descargas/rockyou.txt --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/dsf1_3_hashed_passwords.txt

# Comando para enseñar los resultados
john-the-ripper --show --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/dsf1_3_hashed_passwords.txt

# Comando para mover el john.log a resources y cambiar el nombre a results.log
mv ~/snap/john-the-ripper/current/.john/john.log ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/results.log

# Comando para ejecutar script de python media y moda
python3 ~/ClonedRepositories/IngCiber/lab1_passwords/resources/mean_medium.py ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/results.log >> ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_3/resources/mean_medium.txt

################     DATASET FORM 1 - DATASET 4     ################
# Comando para borrar el john.pot si existe
if [ -f ~/snap/john-the-ripper/current/.john/john.pot ]; then
    rm ~/snap/john-the-ripper/current/.john/john.pot
fi

# Comando para borrar el results.log si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/results.log ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/results.log
fi

# Comando para borrar el mean_medium.txt si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/mean_medium.txt ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/mean_medium.txt
fi

# Comando para ejecutar john-the-ripper estrategia 3 con MD5 con timeout de 10 mins
timeout 600 john-the-ripper --wordlist=/home/midoosh/Descargas/rockyou.txt --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/dsf1_4_hashed_passwords.txt

# Comando para enseñar los resultados
john-the-ripper --show --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/dsf1_4_hashed_passwords.txt

# Comando para mover el john.log a resources y cambiar el nombre a results.log
mv ~/snap/john-the-ripper/current/.john/john.log ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/results.log

# Comando para ejecutar script de python media y moda
python3 ~/ClonedRepositories/IngCiber/lab1_passwords/resources/mean_medium.py ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/results.log >> ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_4/resources/mean_medium.txt

################     DATASET FORM 1 - DATASET 5     ################
# Comando para borrar el john.pot si existe
if [ -f ~/snap/john-the-ripper/current/.john/john.pot ]; then
    rm ~/snap/john-the-ripper/current/.john/john.pot
fi

# Comando para borrar el results.log si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/results.log ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/results.log
fi

# Comando para borrar el mean_medium.txt si existe
if [ -f ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/mean_medium.txt ]; then
    rm ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/mean_medium.txt
fi

# Comando para ejecutar john-the-ripper estrategia 3 con MD5 con timeout de 10 mins
timeout 600 john-the-ripper --wordlist=/home/midoosh/Descargas/rockyou.txt --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/dsf1_5_hashed_passwords.txt

# Comando para enseñar los resultados
john-the-ripper --show --format=raw-md5 ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/dsf1_5_hashed_passwords.txt

# Comando para mover el john.log a resources y cambiar el nombre a results.log
mv ~/snap/john-the-ripper/current/.john/john.log ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/results.log

# Comando para ejecutar script de python media y moda
python3 ~/ClonedRepositories/IngCiber/lab1_passwords/resources/mean_medium.py ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/results.log >> ~/ClonedRepositories/IngCiber/lab1_passwords/datasets/MD5/dataset_form_1/dataset_5/resources/mean_medium.txt
