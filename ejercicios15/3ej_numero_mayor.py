#Pide al usuario dos números, multiplícalos, y muestra si el resultado es mayor o menor
#que 100.

a = int(input("ingresa un numero"))
b = int(input("ingresa un segundo numero"))
resultado = a * b 
if resultado >= 100: 
    print("el resultado es mayor que 100 ")
else:
    print("el resultado es menor que 100")

