//
//  ViewController.swift
//  TextAutoresize
//
//  Created by Maria Teresa Jimenez on 06/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreEmpleado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nombreEmpleado.text = "Francisco Fernando Ramirez de la Mora"
    }


}

