//
//  ViewController.swift
//  Navigation-Controller--2
//
//  Created by Maria Teresa Jimenez on 10/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    let boton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        boton.setTitle("Ir al segundo VC", for: .normal)
        
        boton.backgroundColor = UIColor.white
        boton.setTitleColor(UIColor.blue, for: .normal)
        boton.frame = CGRect(x:50 , y:50 , width: 200, height:50)
        boton.addTarget(self, action: #selector(tapSegundoVC), for: .touchUpInside)
        view.addSubview(boton)
        
        
    }

    
    @objc private func tapSegundoVC(){
        let segundoVC = SegundoViewController()
        
        let navVC = UINavigationController(rootViewController: segundoVC)
        
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
    }

}

class SegundoViewController: UIViewController{
    
    let btnBack = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        self.title = "Segundo VC"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "< Regresar", style: .plain, target: self, action: #selector(regresarPrimerVC))
        
    }
    
    
    @objc private func regresarPrimerVC(){
        dismiss(animated: true, completion: nil)
    }
}

