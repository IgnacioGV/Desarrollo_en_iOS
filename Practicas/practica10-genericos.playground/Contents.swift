import UIKit

var texto: String = "Hola Mundo"

//texto = 5

func suma(a: Int, b: Int)->Int{
    return a + b
}

let resultado = suma(a: 42, b: 99)
print(resultado)

func suma2(a: Double, b: Double)->Double{
    return a + b
}

let resultado2 = suma2(a: 42.5, b: 99.3)
print(resultado2)

func sumaGenerica<T: Numeric>(a: T, b: T) -> T{
    return a + b
}

print(sumaGenerica(a: 42, b: 99))
print(sumaGenerica(a: 42.5, b: 99.3))
print(sumaGenerica(a: Double.pi, b: Double.pi))


//Equatable --> Equivalente

let arregloNombres = ["Hugo", "Paco", "Luis"]

for(index, nombre) in arregloNombres.enumerated()
{
    print("\(index): \(nombre)")
}

func obtienePosicion<T: Equatable>(abuscar: T, nombres: [T]) -> Int? {
    for(index, nombre) in nombres.enumerated()
    {
        if nombre == abuscar{
            return index
        }
    }
    
    return nil
}

let encontrar = obtienePosicion(abuscar: "Luis", nombres: arregloNombres)

if encontrar != nil{
    print("Se encontro en la posicion:")
    print(encontrar!)
}else{
    
    print("No se encontro")
}

//Extension de estructuras

struct Point{
    let x: Int, y: Int
    
}

let p = Point(x: 21, y: 30)
print(p)

extension Point{
    var descripcion: String{
        return "\(x), \(y)"
    }
}

var nueva = p.descripcion
print(nueva)


//Sobreescritura de metodos
class Perro{
    var raza: String = ""
    func haceRuido(){
        print("Woof!")
    }
}

class Cachorro: Perro{
    
    override func haceRuido(){
        print("Yiip!")
    }
}

let mascota: Cachorro = Cachorro()

mascota.raza = "Pastor Aleman"

print(mascota.raza)
mascota.haceRuido()

//Uso de final
// Si se agrega final a la clase Paciente esta no puede heredar sus propiedades
class Paciente{
    var nombre: String
    var padecimiento: String
    
    init(nombre: String, padecimiento: String) {
        self.nombre = nombre
        self.padecimiento = padecimiento
    }
}

let objetoPaciente = Paciente(nombre: "Carlos Perez", padecimiento: "Hipertension")

print(objetoPaciente.nombre)
print(objetoPaciente.padecimiento)

class EnfermoGrave: Paciente{
    var nivelDolor: Int
    
    init(nombre: String, padecimiento: String, dolor: Int) {
        self.nivelDolor = dolor
        super.init(nombre: nombre, padecimiento: padecimiento)
    }
}

let objetoEnfermo: EnfermoGrave = EnfermoGrave(nombre: "Juan Lopez", padecimiento: "Diabetes", dolor: 3)

print("\(objetoEnfermo.nombre) \(objetoEnfermo.nivelDolor) ")

//Copia de objetos

class Cantante{
    var nombre = "Carlos Rivera"
}

var objCantante: Cantante = Cantante()
print(objCantante.nombre)

var objCantante2 = objCantante
print(objCantante.nombre)

objCantante2.nombre = "Christian Nodal"

print(objCantante.nombre)
