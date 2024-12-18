import os.path 
import sys
from Crypto.Cipher import ARC4
from Crypto.Hash import SHA256

fin = sys.argv[1]
if not os.path.exists(fin) or os.path.isdir(fin) or not os.path.isfile(fin):
    print(fin + " cannot be encrypted or decrypted", file=sys.stderr)
    quit()

if len(sys.argv[2]) < 5:
    h = SHA256.new()
    h.update(sys.argv[2].encode('utf-8'))
    key = h.digest()

else:
    key = sys.argv[2][0:256]

cipher = ARC4.new(key)

f = open(fin, "rb")

block = f.read(1024)
while len(block) > 0:
    cryptogram = cipher.encrypt(block)
    os.write(1, cryptogram)
    block = f.read(1024)

f.close()