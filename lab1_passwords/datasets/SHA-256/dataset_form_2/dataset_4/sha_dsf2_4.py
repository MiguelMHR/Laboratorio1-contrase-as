"""
Dataset de contraseñas de 6 letras mayúsculas
"""

# Librerías necesarias:
import random
from Crypto.Hash import SHA256
from Crypto.Protocol.KDF import bcrypt
from base64 import b64encode

# Variables globales:
letras_mayusculas = 'ABCDEFGHIJKLMNOPQRSTUVWXYXZ'
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 6 letras aleatorias
for i in range(100):
    pw = ''
    for j in range(6):
        random_letter_pos = random.randint(0, 25)
        pw += letras_mayusculas[random_letter_pos]
    passwords.append(pw)

""" 
Hasheas las contraseñas usando SHA-256:
➡️ Usando bcrypt te genera un salt aleatorio
"""
for password in passwords:
    # Generamos en hash en base64 (bytestring) para que bcrypt pueda aplicar el salt
    # Además, el password se pasa previamente a bytestring para que se pueda aplicar
    # la función SHA-256
    hashed_password = b64encode(SHA256.new(password.encode('utf-8')).digest())
    # Aplicamos bcrypt para generar el salt aleatorio (generado en cada uso de bcrypt) 
    # y el hash final
    # NOTA: En la documentación, se recomienda usar un cost de 12 
    bcrypt_hashed_password = bcrypt(hashed_password, 12)
    hashed_passwords.append(bcrypt_hashed_password.decode('utf-8'))

# Escribimos las contraseñas originales en un txt
with open('passwords.txt', 'w') as f:
    for password in passwords:
        f.write(password + '\n')

# Escribimos los hashes con salt en un txt
with open('hashed_passwords.txt', 'w') as f:
    for hashed_password in hashed_passwords:
        f.write(hashed_password + '\n')