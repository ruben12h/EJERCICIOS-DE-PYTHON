#Pide al usuario dos números y muestra cuál es el mayor (o si son iguales).

a = float(input("ingresa un primer numero: "))
b = float(input("ingresa un segundo numero: "))

if a > b:
    print(f"El numero mayor es: {a}")
elif b > a:
    print(f"el numero mayor es: {b}")
else:
    print("Ambos numeros son iguales.")


