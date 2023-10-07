"""
Dataset Diccionarios 2: 
- contraseñas de palabras de max 7 que no
  empiecen por la 't', 'a', 's', 'c', 'b', 
  'p', 'm', 'h', 'f' y 'r'
💡 - son las letras que más se repiten 
     como inicial en inglés
  
"""

# Librerías necesarias:
from random_word import RandomWords
import hashlib

# Variables globales:
r = RandomWords()
forb_init_letters = ['t', 'a', 's', 'c', 'b', 'p', 'm', 'h', 'f', 'r']
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de palabras aleatorias de 3 caracteres
for i in range(100):
    found = False
    while not found:
        r_word = r.get_random_word()
        if len(r_word) <= 7 and r_word[0] not in forb_init_letters:
            found = True
    print(r_word)
    passwords.append(r_word)

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
