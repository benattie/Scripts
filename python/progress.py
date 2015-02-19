import sys
import time

for n in xrange(10, 1, -1):
    sys.stdout.write("\r")
    sys.stdout.write("%2d" % n)
    sys.stdout.flush()
    time.sleep(0.25)
sys.stdout.write("\n")
