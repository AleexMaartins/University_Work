import sys
import hashlib

h = hashlib.sha1()

if len(sys.argv) <2:
    print ("Usage: python3%s filename" % (sys.argv[0]))
    sys.exit(1)

f=open (sys.argv[1], "rb")

buffer = f.read(512)

while len (buffer) > 0:
    h.update (buffer)
    buffer = f.read(512)

f.close ()
print (h.hexdigest())

sys.exit (0)