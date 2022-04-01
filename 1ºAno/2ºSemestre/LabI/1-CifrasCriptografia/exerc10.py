from Crypto.PublicKey import RSA
import sys

if len(sys.argv) < 4:
    print("Usage: "+ sys.argv[0] + "file key numberofbits")
    quit()

nbits = int(sys.argv[3])

keypair = RSA.generate(nbits)
fout = open(sys.argv[1], "wb")
kp = keypair.exportKey("PEM", sys.argv[2])
fout.write(kp)
fout.close()