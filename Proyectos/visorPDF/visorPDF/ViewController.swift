//
//  ViewController.swift
//  visorPDF
//
//  Created by Maria Teresa Jimenez on 17/04/21.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var listaTitulos = ["Clean code", "JavaScript Definitive Guide","Metering regular expressions", "Titulo1", "Titulo2", "Titulo3", "Titulo4", "Titulo5", "Titulo6", "Titulo7", "Titulo8", "Titulo9", "Titulo10"]
    var listaArchivos = ["pdf1", "pdf2", "pdf3", "pdf1", "pdf2", "pdf3", "pdf1", "pdf2", "pdf3", "pdf1"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaArchivos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = listaTitulos[indexPath.row]
        celda.imageView!.image = UIImage(named: "iconopdf")
        return celda
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            let refreshAlert = UIAlertController(title: "¿Deseas eliminar el registro?", message: "Se eleminará el registro " + listaTitulos[indexPath.row] , preferredStyle: .alert)
            refreshAlert.addAction(UIAlertAction(title: "Si eliminar", style: .default, handler: {
                (action: UIAlertAction!) in
                
                print(indexPath.row)
                self.listaArchivos.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .middle)
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: {
                (action: UIAlertAction!) in
                
                print("Se cancelo eliminar")
            }))
            
            present(refreshAlert, animated: true, completion: nil)
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Eliminar"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "mostrarPDFSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrarPDFSegue"{
            let idPDF = sender as! Int
            let mostrarPDFVC: mostrarPDFViewController = segue.destination as! mostrarPDFViewController
            
            mostrarPDFVC.tituloPDF = listaTitulos[idPDF]
            mostrarPDFVC.nombrePDF = listaArchivos[idPDF]
        }
    }

}

