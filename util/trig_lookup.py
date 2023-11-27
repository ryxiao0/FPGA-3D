import math
import struct

def trig_lookup(func, width):
    if func == "sin":
        f = math.sin
    else:
        f = math.cos
    two_pi = math.pi * 2
    theta = 0
    i = 0
    while theta <= two_pi:
        v = hex((struct.unpack("i", struct.pack("f", f(theta)))[0] + (1 << 32)) % (1 << 32))
        s = str(width) + "'d" + str(i) + ": "+ func + " <= 32'h" + str(v[2:].zfill(8)) + ";"
        print(s)
        theta += two_pi / (2**width)
        i += 1


if __name__ == "__main__":
    sin = "sin"
    cos = "cos"
    width = 5
    trig_lookup(cos, width)
    print(math.sin(0))