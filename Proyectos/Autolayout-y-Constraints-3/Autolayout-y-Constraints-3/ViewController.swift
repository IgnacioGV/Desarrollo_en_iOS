//
//  ViewController.swift
//  Autolayout-y-Constraints-3
//
//  Created by Maria Teresa Jimenez on 05/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    var arribaIzq = UILabel()
    var arribaDer = UILabel()
    var abajoIzq = UILabel()
    var abajoDer = UILabel()
    
    var arregloConstraints = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        arribaIzq.backgroundColor = UIColor.blue
        arribaIzq.text = "ARRI"
        arribaIzq.textColor = UIColor.black
        arribaIzq.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arribaIzq)
        let arribaIzqTop = arribaIzq.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20)
        let arribaIzqLeading = arribaIzq.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let arribaIzqWidth = arribaIzq.widthAnchor.constraint(equalToConstant: 150)
        let arribaIzqHeight = arribaIzq.heightAnchor.constraint(equalToConstant: 150)
        arregloConstraints.append(contentsOf: [arribaIzqTop, arribaIzqLeading, arribaIzqWidth, arribaIzqHeight])
        
        
        arribaDer.backgroundColor = UIColor.green
        arribaDer.text = "ARRD"
        arribaDer.textColor = UIColor.black
        arribaDer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arribaDer)
        let arribaDerTop = arribaDer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20)
        let arribaDerTrailing = arribaDer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let arribaDerWidth = arribaDer.widthAnchor.constraint(equalToConstant: 100)
        let arribaDerHeight = arribaDer.heightAnchor.constraint(equalToConstant: 100)
        arregloConstraints.append(contentsOf: [arribaDerTop, arribaDerTrailing, arribaDerWidth, arribaDerHeight])
        
        
        abajoIzq.backgroundColor = UIColor.orange
        abajoIzq.text = "ABAI"
        abajoIzq.textColor = UIColor.black
        abajoIzq.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(abajoIzq)
        let abajoIzqTop = abajoIzq.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
        let abajoIzqLeading = abajoIzq.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let abajoIzqWidth = abajoIzq.widthAnchor.constraint(equalToConstant: 100)
        let abajoIzqHeight = abajoIzq.heightAnchor.constraint(equalToConstant: 100)
        arregloConstraints.append(contentsOf: [abajoIzqTop, abajoIzqLeading, abajoIzqWidth, abajoIzqHeight])
        
        
        abajoDer.backgroundColor = UIColor.purple
        abajoDer.text = "ABAD"
        abajoDer.textColor = UIColor.black
        abajoDer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(abajoDer)
        let abajoDerTop = abajoDer.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20)
        let abajoDerTrailing = abajoDer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let abajoDerWidth = abajoDer.widthAnchor.constraint(equalToConstant: 100)
        let abajoDerHeight = abajoDer.heightAnchor.constraint(equalToConstant: 100)
        arregloConstraints.append(contentsOf: [abajoDerTop, abajoDerTrailing, abajoDerWidth, abajoDerHeight])
        
        
        NSLayoutConstraint.activate(arregloConstraints)
        
    }


}

