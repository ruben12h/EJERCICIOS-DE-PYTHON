#Pide al usuario ingresar una fruta, agrégala a una lista de frutas y muestra la lista actualizada.

frutas =["manzana","banana","naranja","fresa"]
nueva_fruta = input("ingresa una fruta:")

frutas.append(nueva_fruta)                             #agregar la fruta a la lista
print("lista actualizada de frutas:",frutas)