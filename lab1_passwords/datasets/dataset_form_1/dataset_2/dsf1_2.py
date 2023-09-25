import hashlib
import random

# Genera 100 contraseñas de 4 letras aleatorias
passwords = []
for i in range(100):
    password = ''.join(random.choice('abcdefghijklmnopqrstuvwxyz') for j in range(4))
    passwords.append(password)

# Hasheas las contraseñas usando md5
hashed_passwords = []
for password in passwords:
    hashed_password = hashlib.md5(password.encode()).hexdigest()
    hashed_passwords.append(hashed_password)

# Write the original passwords to a txt file
with open('passwords.txt', 'w') as f:
    for password in passwords:
        f.write(password + '\n')

# Write the hashed passwords to a txt file
with open('hashed_passwords.txt', 'w') as f:
    for hashed_password in hashed_passwords:
        f.write(hashed_password + '\n')
