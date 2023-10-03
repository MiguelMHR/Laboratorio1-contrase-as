"""
Dataset de contraseñas de 3 letras minúsculas
"""

# Librerías necesarias:
import random
import hashlib
import os # Para crear el saly con urandom

# Variables globales:
letras_minusculas = 'abcdefghijklmnopqrstuvwxyz'
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 3 letras aleatorias
for i in range(100):
    pw = ''
    for j in range(3):
        random_letter_pos = random.randint(0, 25)
        pw += letras_minusculas[random_letter_pos]
    passwords.append(pw)

""" 
Hasheas las contraseñas usando MD5:
➡️ Usando bcrypt te genera un salt aleatorio
"""
for password in passwords:
    #? NO USAMOS SALT, SOLO MD5
    #! Si no es imposible que John lo crackee
    # Combinamos la contraseña con el salt
    passwsalt = password.encode('utf-8')
    # Aplicamos MD5 con la contraseña salada
    hashed_password = hashlib.md5(passwsalt).hexdigest()
    hashed_passwords.append(hashed_password)

# Escribimos las contraseñas originales en un txt
with open('passwords.txt', 'w') as f:
    for password in passwords:
        f.write(password + '\n')

# Escribimos los hashes con salt en un txt
with open('hashed_passwords.txt', 'w') as f:
    for hashed_password in hashed_passwords:
        f.write(hashed_password + '\n')
