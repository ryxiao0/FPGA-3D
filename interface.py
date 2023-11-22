import time
from manta import Manta
import random
import struct
m = Manta('lab08.yaml') # create manta python instance using yaml

val3s = [random.randint(1, 100) for a in range(10)]
val4s = [random.randint(1, 100) for a in range(10)]

# for i in range(len(val3s)):
#     val3 = val3s[i]
#     val4 = val4s[i]
#     m.lab8_io_core.val3_out.set(val3) # set the value val3_out to be val3
#     m.lab8_io_core.val4_out.set(val4) # set the value val4_out to be val4
#     time.sleep(0.01) # wait a little amount...though honestly this is isn't needed since Python is slow.
#     a = m.lab8_io_core.val1_in.get() # read in the output from our divider
#     b = m.lab8_io_core.val2_in.get() # read in the output from our divider
#     print("Division Test ", i)
#     print(f"Values in were {val3} and {val4} with results {val4}//{val3}={val4//val3} and {val4}%{val3}={val4%val3}.")
#     print(f"Actual results were: {a} and {b}!\n")

val3s = [random.randint(100, 10000)/random.randint(1, 50) for a in range(5)]
val4s = [random.randint(100, 10000)/random.randint(1, 50) for a in range(5)]

for j in range(len(val3s)):
    val3 = struct.unpack("i", struct.pack("f", val3s[j]))[0]
    val4 = struct.unpack("i", struct.pack("f", val4s[j]))[0]

    m.lab8_io_core.val3_out.set(val3) # set the value val3_out to be val3
    m.lab8_io_core.val4_out.set(val4) # set the value val4_out to be val4
    time.sleep(0.01) # wait a little amount...though honestly this is isn't needed since Python is slow.
    a = m.lab8_io_core.val1_in.get() # read in the output from our divider
    b = m.lab8_io_core.val2_in.get() # read in the output from our divider

    afloat = struct.unpack("f", struct.pack("i", a))[0]
    bfloat = struct.unpack("f", struct.pack("i", b))[0]
    print("Float Test ", j)
    print(f"Values in were {val3s[j]} and {val4s[j]} with results {val3s[j]**2 + val4s[j]**2} and {1/((val3s[j]**2 + val4s[j]**2)**.5)}.")
    print(f"Actual results were: {afloat} and {bfloat}!\n")
