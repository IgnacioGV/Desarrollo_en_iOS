import UIKit

//Optional

var str=""

//nil = null (sin valor)

var cadena:String="This is the way"
var otraCadena:String=""
var nombre:String

print(cadena)

print(otraCadena)

var nombreOpcional:String?

nombreOpcional="Soy un opcional"

print("\(nombreOpcional!)")//unwrap

var miEntero:Int?

miEntero=50

print("\(miEntero!)")

let diametro:Optional<Int>=45

print("\(diametro!)")

var regalosNavdad:Int?

regalosNavdad=10
if regalosNavdad != nil {
    var cantidadRegalos=regalosNavdad!
    print("Llegaron \(cantidadRegalos) regalos de Navidad-Happy")
}else{
    print("No llegaron regalos de Navidad - Sad")
}//Closure

var regalosNavidad2021:Int?

regalosNavidad2021=5

//Optional Binding
if let cantidadRegalos2021=regalosNavidad2021{
       
    print("Llegaron \(cantidadRegalos2021) regalos de Navidad-Happy")
}else{
    print("No llegaron regalos de Navidad - Sad")
}//Closure

var signoExclamacion:Character = "a"

signoExclamacion="!"

print(signoExclamacion)

//Arreglo de Caracteres
let grupos:[Character]=["H", "O", "L", "A", "!"]

let gruposCadena=String(grupos)

print(gruposCadena)

print(grupos[3])






