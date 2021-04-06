//
//  Empleado.swift
//  conexionesApp
//
//  Created by Maria Teresa Jimenez on 05/04/21.
//

import Foundation

class Empleado{
    
    var nombre: String = ""
    var apellido: String = ""
    var numEmpleado: Int = 0
    var numSeguroSocial: Int = 0
    
    func mostrarNombreCompleto() -> String {
        return "\(nombre) \(apellido)"
    }
    
    func mostrarNumEmpleado() -> Int {
        return numEmpleado
    }
    
}
