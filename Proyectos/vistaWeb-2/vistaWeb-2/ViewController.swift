//
//  ViewController.swift
//  vistaWeb-2
//
//  Created by Maria Teresa Jimenez on 10/04/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var vistaWeb: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Abrir", style: .plain, target: self, action: #selector(tapAbrir))
       
        let liga = URL(string: "https://grupohernandezalba.com")!
        vistaWeb.load(URLRequest(url: liga))
        vistaWeb.allowsBackForwardNavigationGestures = true
    }
    
    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
    }
    
    @objc func tapAbrir(){
        
        let alertaC = UIAlertController(title: "Abrir Web", message: nil, preferredStyle: .actionSheet)
        
        alertaC.addAction(UIAlertAction(title: "apple.com", style: .default, handler: abrirPagina))
        alertaC.addAction(UIAlertAction(title: "grupohernandezalba.com", style: .default, handler: abrirPagina))
        alertaC.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        
        alertaC.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        present(alertaC, animated: true)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
    func abrirPagina(action: UIAlertAction) {
        let url = URL(string: "https://" + action.title!)!
        vistaWeb.load(URLRequest(url: url))
    }


}

