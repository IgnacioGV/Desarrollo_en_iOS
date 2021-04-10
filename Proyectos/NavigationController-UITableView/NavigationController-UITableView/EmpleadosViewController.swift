//
//  EmpleadosViewController.swift
//  NavigationController-UITableView
//
//  Created by Maria Teresa Jimenez on 10/04/21.
//

import UIKit

class EmpleadosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var nombreEmpleados = ["Hugo Perez", "Francisco Lopez", "Luis Magaña"]
    var edadEmpleados = [21, 22, 23]
    var fotosEmpleados:[UIImage] = [UIImage(named: "foto1.jpg")!, UIImage(named: "foto2.jpg")!, UIImage(named: "foto3.jpg")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombreEmpleados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        
        celda.textLabel?.text = nombreEmpleados[indexPath.row]
        
        return celda
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detalleEmpleadoSedgue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalleEmpleadoSedgue"{
            let idSeleccionado = sender as! Int
            let detalleEmpleadoVC:DetalleViewController = segue.destination as! DetalleViewController
            
            detalleEmpleadoVC.NombreRecibido = nombreEmpleados[idSeleccionado]
            detalleEmpleadoVC.EdadRecibida = edadEmpleados[idSeleccionado]
            detalleEmpleadoVC.FotoRecibida = fotosEmpleados[idSeleccionado]
        }
    }
   
}
