# import os
# a = b"cac/"
# b = b""
# for i in range(300):
#     os.system("cd cac && mkdir cac&& cat \"a\" > cac.txt")
for i in range(5):
    with open (f"{hex(0x558+i*0x10)}","w") as f:
        f.write("a"*(0x558+i*0x10))
  



