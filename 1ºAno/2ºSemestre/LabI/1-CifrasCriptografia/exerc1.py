import sys
import hashlib

if len(sys.argv) <2:
    print ("Usage: python3%s filename" % (sys.argv[0]))
    sys.exit(1)

f=open (sys.argv[1], "r")

h = hashlib.sha1()

for line in f :
    h.update (line.encode('utf-8'))

f.close ()
print (h.hexdigest())

sys.exit (0)