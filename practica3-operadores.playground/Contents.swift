import UIKit

let nombre = "Juan"

if nombre == "Juansdad"{
    print("Hola Juan")
}else{
    print("No es la persona")
}

//Operador ternario

var edad=15

var resultado=edad>=18 ? "Aulto" : "Menos de edad"
print(resultado)

//Rango

var rangoNumeros=1...10

print(rangoNumeros)

let calificacion=9

switch calificacion {
case 8...10:
    print("Alta")
case 6...7:
    print("Media")
default:
    print("Baja")
}
