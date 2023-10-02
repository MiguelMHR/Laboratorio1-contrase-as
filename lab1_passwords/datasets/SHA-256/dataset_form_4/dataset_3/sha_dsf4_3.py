"""
Dataset de contraseñas de 5 caracteres, ya sean números, letras
mayúsculas y minúsculas y símbolos
"""

# Librerías necesarias:
import random
import string
from Crypto.Hash import SHA256
from Crypto.Protocol.KDF import bcrypt
from base64 import b64encode

# Variables globales:
caracteres = string.digits + string.ascii_letters + string.punctuation
passwords = []
hashed_passwords = []

# Genera 100 contraseñas de 5 caracteres aleatorios
for i in range(100):
    pw = ''
    for j in range(5):
        random_pos = random.randint(0, len(caracteres) - 1)
        pw += caracteres[random_pos]
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
