//
//  ViewController.swift
//  conexionesApp
//
//  Created by Maria Teresa Jimenez on 05/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NombreDpto: UILabel!
    
    var objEmpleado: Empleado?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        NombreDpto.text = "Depto de Sistemas"
    }

    @IBAction func btnAltaEmpleado(_ sender: UIButton) {
        print("Entro a alta empleado")
        objEmpleado = Empleado()
        objEmpleado?.nombre = "Juan"
        objEmpleado?.apellido = "Perez"
        objEmpleado?.numEmpleado = 1
        objEmpleado?.numSeguroSocial = 123456
    }
    @IBAction func btnConsultarEmpleado(_ sender: UIButton) {
        
        print("Entro a consultar empleado")
        
        if objEmpleado != nil {
            print("\(objEmpleado!.nombre)")
            print("\(objEmpleado!.mostrarNombreCompleto())")
            print("\(objEmpleado!.mostrarNumEmpleado())")
            print("\(objEmpleado!.numSeguroSocial)")
        }else{
            print("Aun no se ha dado de alta un empleado")
        }
        
    }
    @IBAction func btnVerIMSS(_ sender: UIButton) {
        print("Entro a ver IMSS")
    }
    
    @IBAction func btnBajaEmpleado(_ sender: UIButton) {
        print("Entro a baja empleado")
    }
}

