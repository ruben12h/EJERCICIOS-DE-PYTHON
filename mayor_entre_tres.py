a = int(input("primer numero"))
b = int(input("segundo numero"))
c = int(input("tercer numero"))
mayor = a
if b > mayor:
    mayor = b
if c > mayor:
    mayor = c
print("el numero mayor es:", mayor)
