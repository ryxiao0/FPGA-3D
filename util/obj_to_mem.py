import sys
import struct

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: {0} <image to convert>".format(sys.argv[0]))
    else:
        input_fname = sys.argv[1]
        vertices = []
        facets = []
        first = False
        print("Parsing obj file")
        with open(input_fname) as f:
            for l in f:
                if l[0] == "v" and len(l) > 1 and l[1] == " ":
                    coor = []
                    val = ""
                    for i in range(2, len(l)):
                        if l[i] == " " or l[i] == "\n":
                            coor.append(float(val))
                            val = ""
                        else:
                            val += l[i]
                    vertices.append(tuple(coor))
                elif l[0] == "f":
                    ind = []
                    val = ""
                    dont = False
                    added = False
                    for i in range(2, len(l)):
                        if l[i] == "/" and dont == False:
                            ind.append(int(val))
                            added = True
                            dont = True
                        elif l[i] == " ":
                            val = ""
                            dont = False
                            added = False
                        elif not dont:
                            val += l[i]
                    # xVal = hex((struct.unpack("i", struct.pack("f", vertices[ind[0]-1][0]))[0] + (1 << 32)) % (1 << 32))
                    # yVal = hex((struct.unpack("i", struct.pack("f", vertices[ind[0]-1][1]))[0] + (1 << 32)) % (1 << 32))
                    # zVal = hex((struct.unpack("i", struct.pack("f", vertices[ind[0]-1][2]))[0] + (1 << 32)) % (1 << 32))
                    # facets.append(xVal[2:].zfill(8)+yVal[2:].zfill(8)+zVal[2:].zfill(8))
                    i1 = hex(struct.unpack("i", struct.pack("i", ind[0]))[0])
                    i2 = hex(struct.unpack("i", struct.pack("i", ind[1]))[0])
                    i3 = hex(struct.unpack("i", struct.pack("i", ind[2]))[0])
                    facets.append(i1[2:].zfill(4)+i2[2:].zfill(4)+i3[2:].zfill(4))

                    # hex((val + (1 << nbits)) % (1 << nbits)) to get hex of twos complement

        
        print("Calculating COM")
        xCOM = sum([v[0] for v in vertices])/len(vertices)
        yCOM = sum([v[1] for v in vertices])/len(vertices)
        zCOM = sum([v[2] for v in vertices])/len(vertices)
        xVal = hex((struct.unpack("i", struct.pack("f", xCOM))[0] + (1 << 32)) % (1 << 32))
        yVal = hex((struct.unpack("i", struct.pack("f", yCOM))[0] + (1 << 32)) % (1 << 32))
        zVal = hex((struct.unpack("i", struct.pack("f", zCOM))[0] + (1 << 32)) % (1 << 32))
        hexCOM = xVal[2:].zfill(8)+yVal[2:].zfill(8)+zVal[2:].zfill(8)

        vert_str = []
        vert = [(a[0]-xCOM, a[1]-yCOM, a[2]-zCOM) for a in vertices]
        print(vert)
        for v in vert:
            xVal = hex((struct.unpack("i", struct.pack("f", v[0]))[0] + (1 << 32)) % (1 << 32))
            yVal = hex((struct.unpack("i", struct.pack("f", v[1]))[0] + (1 << 32)) % (1 << 32))
            zVal = hex((struct.unpack("i", struct.pack("f", v[2]))[0] + (1 << 32)) % (1 << 32))
            vert_str.append(xVal[2:].zfill(8)+yVal[2:].zfill(8)+zVal[2:].zfill(8))

        newFileName = "data/"+input_fname[5:len(input_fname)-4] + "_vertices.mem"
        with open(newFileName, "w") as f:
            f.write("\n".join([v for v in vert_str]))

        newFileName = "data/"+input_fname[5:len(input_fname)-4] + "_facets.mem"
        with open(newFileName, "w") as f:
            f.write("\n".join([fa for fa in facets]))

        print("Output saved to", newFileName)
                