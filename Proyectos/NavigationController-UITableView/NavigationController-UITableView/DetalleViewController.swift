//
//  DetalleViewController.swift
//  NavigationController-UITableView
//
//  Created by Maria Teresa Jimenez on 10/04/21.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var EdadEmpleado: UILabel!
    @IBOutlet weak var ImageEmpleado: UIImageView!
    @IBOutlet weak var NombreEmpleado: UILabel!
    
    var NombreRecibido: String?
    var EdadRecibida: Int?
    var FotoRecibida = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NombreEmpleado.text = NombreRecibido!
        EdadEmpleado.text = String(EdadRecibida!)
        ImageEmpleado.image = FotoRecibida
        
        // Do any additional setup after loading the view.
    }
    



}
