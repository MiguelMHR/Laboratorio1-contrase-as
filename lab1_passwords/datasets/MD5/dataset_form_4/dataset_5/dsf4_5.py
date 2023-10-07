"""
Dataset de contraseñas de 7 caracteres, ya sean números (digits), letras (ascii_letters)
mayúsculas y minúsculas y símbolos (punctuation).
"""

# Librerías necesarias:
import random
import string
import hashlib

# Variables globales:
caracteres = string.digits + string.ascii_letters + string.punctuation
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 7 caracteres aleatorios
for i in range(100):
    pw = ''
    for j in range(7):
        random_pos = random.randint(0, len(caracteres) - 1)
        pw += caracteres[random_pos]
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
