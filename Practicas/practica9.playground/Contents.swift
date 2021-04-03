import UIKit

//Variables globales y locales

var variableGlobal = 50

func evaluar(){
    var variableLocal: String
    variableLocal = "Este es un texto de ejemplo"
    print("Global: \(variableGlobal), Local: \(variableLocal)")
}

evaluar()

//Objeto de clase

class Heroe{
    var nombre: String = ""
    var edad: Int = 21
    var tipo = superPoder()
    
    
    func saludar() -> String {
        return "Soy un Super Heroe minombre es \(nombre)"
    }
    
    func muestraPoder() -> String {
        return "Soy \(nombre) y yo puedo \(tipo.accion)"
    }
    
}

class superPoder{
    
    var accion: String = ""
    
}

var objetoHeroe: Heroe = Heroe()

print(objetoHeroe.edad)
objetoHeroe.nombre = "Thor"
print(objetoHeroe.nombre)

var cadena = objetoHeroe.saludar()

print(cadena)

objetoHeroe.tipo.accion = "volar"

print(objetoHeroe.muestraPoder())

class Persona{
    
    var nombre: String = ""
    var apellido: String = ""
    var curp: String = ""
    
    func muestraCURP() -> String {
        return "Curp: \(curp)"
    }
    
}

var objetoPersona: Persona = Persona()

objetoPersona.nombre = "Juan"
objetoPersona.apellido = "Perez"
objetoPersona.curp = "JPEE02343292HTF"

print(objetoPersona.muestraCURP())

//Herencia de propiedades de persona
class Empleado: Persona{
    var numeroEmpleado: Int
    var puesto: String
    
    init(numeroEmpleado: Int, puesto: String) {
        self.numeroEmpleado = numeroEmpleado
        self.puesto = puesto
    }
    
    func datosEmpleado() -> String {
        var datos: String
        
        datos = "Numero de empleado " + String(numeroEmpleado) + "\n"
        datos += "Nombre completo: " + nombre + " " + apellido + "\n"
        datos += "Puesto: " + puesto + "\n"
        
        return datos
    }
}

var objetoEmpleado: Empleado = Empleado(numeroEmpleado: 1, puesto: "Director General")

objetoEmpleado.nombre = "Hugo"
objetoEmpleado.apellido = "Sanchez"
objetoEmpleado.curp = "HSHGGH220932"

print(objetoEmpleado.datosEmpleado())



