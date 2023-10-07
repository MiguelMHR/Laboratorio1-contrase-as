"""
Dataset de contraseñas de 7 letras minúsculas
"""

# Librerías necesarias:
import random
import hashlib

# Variables globales:
letras_minusculas = 'abcdefghijklmnopqrstuvwxyz'
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 7 letras aleatorias
for i in range(100):
    pw = ''
    for j in range(7):
        random_letter_pos = random.randint(0, 25)
        pw += letras_minusculas[random_letter_pos]
    passwords.append(pw)

# Hasheas las contraseñas usando MD5:
for password in passwords:
    enc_password = password.encode('utf-8')
    hashed_password = hashlib.md5(enc_password).hexdigest()
    hashed_passwords.append(hashed_password)

# Escribimos las contraseñas originales en un txt
with open('passwords.txt', 'w') as f:
    for password in passwords:
        f.write(password + '\n')

# Escribimos los hashes con salt en un txt
with open('hashed_passwords.txt', 'w') as f:
    for hashed_password in hashed_passwords:
        f.write(hashed_password + '\n')
        