import time
from manta import Manta
import random
import struct
m = Manta('project.yaml') # create manta python instance using yaml

m1 = [
    [1, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 1, 0],
    [0, 0, 0, 1]
]

m2 = [1, 2, 3, 4]

val1 = struct.unpack("i", struct.pack("f", m1[0][0]))[0]
val2 = struct.unpack("i", struct.pack("f", m1[0][1]))[0]
val3 = struct.unpack("i", struct.pack("f", m1[0][2]))[0]
val4 = struct.unpack("i", struct.pack("f", m1[0][3]))[0]
val5 = struct.unpack("i", struct.pack("f", m1[1][0]))[0]
val6 = struct.unpack("i", struct.pack("f", m1[1][1]))[0]
val7 = struct.unpack("i", struct.pack("f", m1[1][2]))[0]
val8 = struct.unpack("i", struct.pack("f", m1[1][3]))[0]
val9 = struct.unpack("i", struct.pack("f", m1[2][0]))[0]
val10 = struct.unpack("i", struct.pack("f", m1[2][1]))[0]
val11 = struct.unpack("i", struct.pack("f", m1[2][2]))[0]
val12 = struct.unpack("i", struct.pack("f", m1[2][3]))[0]
val13 = struct.unpack("i", struct.pack("f", m1[3][0]))[0]
val14 = struct.unpack("i", struct.pack("f", m1[3][1]))[0]
val15 = struct.unpack("i", struct.pack("f", m1[3][2]))[0]
val16 = struct.unpack("i", struct.pack("f", m1[3][3]))[0]

val17 = struct.unpack("i", struct.pack("f", m2[0]))[0]
val18 = struct.unpack("i", struct.pack("f", m2[1]))[0]
val19 = struct.unpack("i", struct.pack("f", m2[2]))[0]
val20 = struct.unpack("i", struct.pack("f", m2[3]))[0]

m.project_io_core.val1_out.set(val1)
m.project_io_core.val2_out.set(val2)
m.project_io_core.val3_out.set(val3)
m.project_io_core.val4_out.set(val4)
m.project_io_core.val5_out.set(val5)
m.project_io_core.val6_out.set(val6)
m.project_io_core.val7_out.set(val7)
m.project_io_core.val8_out.set(val8)
m.project_io_core.val9_out.set(val9)
m.project_io_core.val10_out.set(val10)
m.project_io_core.val11_out.set(val11)
m.project_io_core.val12_out.set(val12)
m.project_io_core.val13_out.set(val13)
m.project_io_core.val14_out.set(val14)
m.project_io_core.val15_out.set(val15)
m.project_io_core.val16_out.set(val16)
m.project_io_core.val17_out.set(val17)
m.project_io_core.val18_out.set(val18)
m.project_io_core.val19_out.set(val19)
m.project_io_core.val20_out.set(val20)

time.sleep(0.01)

a = m.project_io_core.val21_in.get()
b = m.project_io_core.val22_in.get()
c = m.project_io_core.val23_in.get()
d = m.project_io_core.val24_in.get()

afloat = bin(struct.unpack("i", struct.pack("i", a))[0])
bfloat = struct.unpack("f", struct.pack("i", b))[0]
cfloat = struct.unpack("f", struct.pack("i", c))[0]
dfloat = struct.unpack("f", struct.pack("i", d))[0]

print("Matrix Multiplication Test")
print(f"The outputed matrix is [{afloat}, {bfloat}, {cfloat}, {dfloat}]")
print(f"The expected output should be ")

