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

fsize = os.stat(fin)[6] #tamanho do ficheiro

run = True
while run:
    block = f.read(cipher.block_size)
    text = cipher.decrypt(block) 

    #Remover excipiente

    if f.tell() == fsize: #chegou ao último bloco do ficheiro

        has_padding = True
        i = cipher.block_size - text[-1]
        while has_padding and i < len(text):
            has_padding = text[i] == text[-1]
            i = i+1

        if has_padding:
            text = text[: cipher.block_size - text[-1]]

        run = False
    
    os.write(1,text)

f.close()