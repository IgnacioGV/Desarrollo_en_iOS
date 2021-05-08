//
//  detalleViewController.swift
//  jsonFarmacia
//
//  Created by Maria Teresa Jimenez on 08/05/21.
//

import UIKit

class detalleViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var dosis: UILabel!
    @IBOutlet weak var sustancia: UILabel!
    
    var imagenDetalle = UIImage()
    var nombreDetalle: String?
    var dosisDetalle: String?
    var sustanciaDetalle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagen.image = imagenDetalle
        nombre.text = nombreDetalle
        dosis.text = dosisDetalle
        sustancia.text = sustanciaDetalle

    }
    


}
