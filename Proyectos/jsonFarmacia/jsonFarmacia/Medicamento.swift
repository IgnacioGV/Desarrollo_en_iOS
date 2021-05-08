//
//  Medicamento.swift
//  jsonFarmacia
//
//  Created by Maria Teresa Jimenez on 08/05/21.
//

import Foundation

struct Medicamento: Decodable {
    
    var nombre: String
    var foto: String
    var dosis: String
    var sustancia: String
    
}
