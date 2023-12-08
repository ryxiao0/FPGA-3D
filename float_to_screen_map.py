import time
import struct
from manta import Manta
m = Manta('project.yaml') # create manta python instance using yaml

#tests = (0.24, 0.745321, 0.999, 0.5024, 0.984, -0.1, -0.492, -0.999, 0) manta cannot handle negative numbers
tests = (0.24, 0.745321, 0.999, 0.5024, 0.984, 1.42, 1.982, 0.7)

print("starting")
for i in range(len(tests)):
    float_in = float(tests[i])
    packed_float_in = struct.pack('f', float_in)
    manta_in = struct.unpack('i', packed_float_in)

    m.project_io_core.val1_out.set(manta_in[0])
    time.sleep(0.01)
    manta_out = m.project_io_core.val21_in.get()
    manta_float_out = m.project_io_core.val22_in.get()
    pack_float = struct.pack('i', manta_float_out)

    unpacked_a = struct.unpack('f', pack_float)
    ans =int(float_in * 180 + 180) 


    print(f"Test {float_in}: should be {ans} and was {unpacked_a[0]} and {manta_out}. {float(ans)/float(manta_out)}.")
