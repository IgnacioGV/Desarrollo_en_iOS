import UIKit

var str = "Hola " + "Mundo"

let nombreEmpleado:String="Luke"
let apellidoEmpleado:String="Skywalker"
let titulo:String="Jedi"

var datosEmpledos:String=""

datosEmpledos=nombreEmpleado+" "+apellidoEmpleado+" "+titulo
print(datosEmpledos)

datosEmpledos=""

datosEmpledos+=nombreEmpleado+" "
datosEmpledos+=apellidoEmpleado+" "
datosEmpledos+=titulo

print(datosEmpledos)

let articulo:String="""
Esta cadena es
una multilinea
"""

let 😀="Sonrisa 😀"

print(😀)

var strUnicode="\u{1F496}"
print(strUnicode)



