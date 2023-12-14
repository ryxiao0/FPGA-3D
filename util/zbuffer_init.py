if __name__ == "__main__":
    newFileName = "data/zbuffer_init.mem"
    with open(newFileName, "w") as f:
        f.write("\n".join(["001ff" for v in range(360*360)]))