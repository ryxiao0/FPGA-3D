import time
import struct
from manta import Manta
m = Manta('tri_unroll.yaml') # create manta python instance using yaml

#tests = (0.24, 0.745321, 0.999, 0.5024, 0.984, -0.1, -0.492, -0.999, 0)
# tests = (4, 2, 1, 0.5024, 0.984, 1.42, 1.982, 0.7)
# test_raw = (2.98, 4.2, 6.43, 3.1, 1.9, 494.2, 172.943, 219.1, 39.2, 0.13, 2.2, 1.1)
test = []

# test_raw = (7, 21, 30, 7, 23, 30,  9, 21, 32, 1, 1, 1)
tests = [(7, 21, 30, 1, 7, 23, 30, 1, 9, 21, 32, 1)]

tests.append((6.2, 7.1, 31.3, 1, 10, 7.2, 40.7, 1, 8.1, 8, 32.7, 1))


# test = (2, 4, 6, 3, 1, 494, 172, 219, 39, 0, 2, 1)


print("starting")
# for i in range(len(test)):
    # float_in = float(tests[i])
    # packed_float_in = struct.pack('f', float_in)
    # manta_in = struct.unpack('i', packed_float_in)
for test_num in range(len(tests)):
    test_raw = tests[test_num]
    test = []
    for elem in test_raw:
        packed_elem = struct.pack('f', elem)
        test.append(struct.unpack('i', packed_elem)[0])

    m.tri_unroll_core.in_1_out.set(test[0])
    m.tri_unroll_core.in_2_out.set(test[1])
    m.tri_unroll_core.in_3_out.set(test[2])
    m.tri_unroll_core.in_4_out.set(test[3])
    m.tri_unroll_core.in_5_out.set(test[4])
    m.tri_unroll_core.in_6_out.set(test[5])
    m.tri_unroll_core.in_7_out.set(test[6])
    m.tri_unroll_core.in_8_out.set(test[7])
    m.tri_unroll_core.in_9_out.set(test[8])
    m.tri_unroll_core.in_10_out.set(test[9])
    m.tri_unroll_core.in_11_out.set(test[10])
    m.tri_unroll_core.in_12_out.set(test[11])
    time.sleep(0.1)
    output_1 = m.tri_unroll_core.out_1_out.get()
    output_2 = m.tri_unroll_core.out_2_out.get()
    output_3 = m.tri_unroll_core.out_3_out.get()
    output_4 = m.tri_unroll_core.out_4_out.get()
    output_5 = m.tri_unroll_core.out_5_out.get()
    output_6 = m.tri_unroll_core.out_6_out.get()
    output_7 = m.tri_unroll_core.out_7_out.get()
    output_8 = m.tri_unroll_core.out_8_out.get()
    output_9 = m.tri_unroll_core.out_9_out.get()
    output_10 = m.tri_unroll_core.out_10_out.get()
    output_11 = m.tri_unroll_core.out_11_out.get()
    output_12 = m.tri_unroll_core.out_12_out.get()
    # pack_float = struct.pack('i', manta_float_out)

    outputs = [output_1, output_2, output_3, output_4, output_5, output_6, output_7, output_8, output_9, output_10, output_11, output_12]

    float_outputs = []
    i = 0
    for elem in outputs:
        i += 1
        print(elem)
        packed_elem = struct.pack('i', elem)
        float_outputs.append(struct.unpack('f', packed_elem)[0])
        print(i, round(float_outputs[-1], 2))

    print(test_raw)
    print([round(x, 2) for x in float_outputs])
# unpacked_a = struct.unpack('f', pack_float)
# ans =int(float_in * 180 + 180) 
# print(test)
# print(f"{output_1}, {output_2}, {output_3}, {output_4}, {output_5}, {output_6}, {output_7}, {output_8}, {output_9}, {output_10}, {output_11}, {output_12}")



# print(f"Test {float_in}: should be {ans} and was {unpacked_a[0]} and {manta_out}. {float(ans)/float(manta_out)}.")

    # val4 = float(tests[i][1])
    # packed_val3 = struct.pack('f', val3)
    # packed_val4 = struct.pack('f', val4)
    # unpacked_val3 = struct.unpack('i', packed_val3)
    # m.project_io_core.val1_out.set(val3) # set the value val3_out to be val3
    # # m.project_io_core.val4_out.set(val4) # set the value val4_out to be val4
    # time.sleep(0.01) # wait a little amount...though honestly this is isn't needed since Python is slow.
    # a = m.project_io_core.val21_in.get() # read in the output from our divider
    # # b = m.lab8_io_core.val2_in.get() # read in the output from our divider
    # print(f"Values in were {val3} and {val4} with results {val4}//{val3}={val4//val3} and {val4}%{val3}={val4%val3}.")
    # print(f"Actual results were: {a} and {b}!")