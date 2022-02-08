pathin = "/Users/anb/Downloads/GPL570-55999.txt"
fin = open (pathin ,"r")
name=[]
for line in fin:
  if not line.startswith ("#"):
    line = line.strip()
    s = line.split('///')
    print (s)
    
    break
fin.close()
s