# Pide un número al usuario y muestra el doble, el triple y la raíz cuadrada de ese número.
import math

numero = int(input("ingresa un numero"))  # pedir un numero

doble = numero * 2  # calcula-doble-triple-raiz-cuadrada
triple = numero * 3
raiz_cuadrada = math.sqrt(numero)

print(f"el doble de {numero} es {doble} ")  # resultado
print(f"el triple de {numero} es {triple}")
print(f"la raiz cuadrada de {numero} es {raiz_cuadrada}")
