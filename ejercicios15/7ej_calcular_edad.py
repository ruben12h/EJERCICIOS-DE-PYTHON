#Crea una variable que almacene tu año de nacimiento y calcula tu edad actual.
from datetime import datetime

año_nacimiento = 2006                                        # año de nacimiento
año_actual = datetime.now().year                              # obtener año actual
edad = año_actual - año_nacimiento                            # calcular edad
print(f"Tienes {edad}años.")