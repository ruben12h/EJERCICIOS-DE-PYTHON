usuario = "admin"
clave = "123"

user = input("usuario:")
password = input("contraseña:")

if user == usuario and password == clave:
    print("Bienvenido")
else:
    print("acceso denegado")
