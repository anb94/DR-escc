

from Bio.Affy import CelFile
import os

filepath = "/Users/anb/Downloads/GSE44021_RAW/"
filename_list = os.listdir(filepath)

for file in filename_list:
    path = filepath + file
    with open (path, 'rb') as handle:
        file1 = CelFile.read(handle)




with open("/Users/anb/Downloads/GSE44021_RAW/GSM1076726_E1163N.CEL", "rb") as handle:
    E1163N = CelFile.read(handle)



with open("/Users/anb/Downloads/GSE44021_RAW/GSM1076726_E1163T.CEL", "rb") as handle:
    E1163T = CelFile.read(handle)

with open("/Users/anb/Downloads/GSE44021_RAW/GSM1076726_E1163N.CEL", "rb") as handle:
    E1163N = CelFile.read(handle)

with open("/Users/anb/Downloads/GSE44021_RAW/GSM1076726_E1163T.CEL", "rb") as handle:
    E1163T = CelFile.read(handle)






GSM1076951_E1910T.CEL
