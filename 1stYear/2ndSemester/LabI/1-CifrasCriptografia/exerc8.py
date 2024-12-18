import os.path 
import sys
from Crypto.Cipher import AES
from Crypto.Hash import SHA256

fin = sys.argv[1]
if not os.path.exists(fin) or os.path.isdir(fin) or not os.path.isfile(fin):
    print(fin + " cannot be encrypted or decrypted", file=sys.stderr)
    quit()

if len(sys.argv[2]) < 16:
    h = SHA256.new()
    h.update(sys.argv[2].encode('utf-8'))
    key = h.digest()[0:16]

else:
    key = sys.argv[2][0:16]

cipher = AES.new(key)

f = open(fin, "rb")

run = True
while run:
    block = f.read(cipher.block_size)

    #Adicionar excipiente
    if len(block) != cipher.block_size:
        p = cipher.block_size - len(block)
        block = block + bytes([p]) * p
        run = False

    cryptogram = cipher.encrypt(block)
    os.write(1,cryptogram)

f.close()