"""
Dataset de contraseñas de 7 números
"""

# Librerías necesarias:
import random
import hashlib

# Variables globales:
numeros = '0123456789'
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 7 números aleatorios
for i in range(100):
    pw = ''
    for j in range(7):
        random_number_pos = random.randint(0, 9)
        pw += numeros[random_number_pos]
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

# Escribimos los hashes en un txt
with open('hashed_passwords.txt', 'w') as f:
    for hashed_password in hashed_passwords:
        f.write(hashed_password + '\n')
