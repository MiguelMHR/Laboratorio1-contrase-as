"""
Dataset de contraseñas de 4 caracteres, ya sean números, letras
mayúsculas y minúsculas y símbolos
"""

# Librerías necesarias:
import random
import string
import hashlib

# Variables globales:
caracteres = string.digits + string.ascii_letters + string.punctuation
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 4 caracteres aleatorios
for i in range(100):
    pw = ''
    for j in range(4):
        random_pos = random.randint(0, len(caracteres) - 1)
        pw += caracteres[random_pos]
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
