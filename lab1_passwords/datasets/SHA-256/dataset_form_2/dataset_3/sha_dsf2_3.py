"""
Dataset de contraseñas de 5 letras mayúsculas
"""

# Librerías necesarias:
import random
import hashlib

# Variables globales:
letras_mayusculas = 'ABCDEFGHIJKLMNOPQRSTUVWXYXZ'
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 5 letras aleatorias
for i in range(100):
    pw = ''
    for j in range(5):
        random_letter_pos = random.randint(0, 25)
        pw += letras_mayusculas[random_letter_pos]
    passwords.append(pw)

# Hasheas las contraseñas usando SHA256:
for password in passwords:
    enc_password = password.encode('utf-8')
    hashed_password = hashlib.sha256(enc_password).hexdigest()
    hashed_passwords.append(hashed_password)

# Escribimos las contraseñas originales en un txt
with open('passwords.txt', 'w') as f:
    for password in passwords:
        f.write(password + '\n')

# Escribimos los hashes en un txt
with open('hashed_passwords.txt', 'w') as f:
    for hashed_password in hashed_passwords:
        f.write(hashed_password + '\n')
