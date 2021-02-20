import UIKit


//Funcion que devuelve un valor String
func miFuncion(nombre:String)->String{
    return "Hola " + nombre
}

miFuncion(nombre: "Biden")
print (miFuncion(nombre: "Ignacio"))

func saludo(nombre:String){
    
    print("Hola " + nombre)
}


saludo(nombre: "Juan")

func otroSaludo(nombre:String, enElPoder:Bool)->String{
    if enElPoder {
        return "Si"
    }else{
        return "No"
    }
}

print(otroSaludo(nombre: "AMLO", enElPoder: true))

func cuentaLetras(apellido:String)->Int{
    print(apellido)
    return apellido.count
}

print(cuentaLetras(apellido: "Garcia"))

func comparaNumeros(params:[Int])->(menor:Int, mayor:Int){
    if params[0]>params[1] {
        return (params[1], params[0])
    }else{
        return (params[0], params[1])
    }
}

print(comparaNumeros(params: [5,8]))

var miVariable=comparaNumeros(params: [16,8])
print(miVariable)

//Tuplas

print(miVariable.menor)
print(miVariable.mayor)

//Latitud, Longitud

var serie=(temporada:1, nombre: "Cobra Kai")

print(serie.nombre + ",Temporada \(serie.temporada)")


func otroSaludoMas(nombre:String, de ciudad: String)->String{
    
    return "Hola \(nombre) gracias por visitarnos de la ciudad de \(ciudad)"
}

print(otroSaludoMas(nombre: "Juan", de: "Leon"))

//Omitir la declaracion del nombre de la variable que se pasa, se usa el _
func otroSaludoMas2(_ nombre:String, de ciudad: String)->String{
    
    return "Hola \(nombre) gracias por visitarnos de la ciudad de \(ciudad)"
}

print(otroSaludoMas2("Juan", de: "Leon"))
