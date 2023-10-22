"""
Dataset Diccionarios 1: 
- contraseñas de palabras de max 7 
  y min 3 caracteres 
"""

# Librerías necesarias:
from random_word import RandomWords
import hashlib

# Variables globales:
r = RandomWords()
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de palabras aleatorias de 3 caracteres
for i in range(100):
    found = False
    while not found:
        r_word = r.get_random_word()
        if len(r_word) <= 7 and len(r_word) >= 3:
            found = True
    print(r_word)
    passwords.append(r_word)

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
