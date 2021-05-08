//
//  ViewController.swift
//  acelerometro
//
//  Created by Maria Teresa Jimenez on 08/05/21.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var ejeX: UILabel!
    @IBOutlet weak var ejeY: UILabel!
    @IBOutlet weak var ejeZ: UILabel!
    
    var motion = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if motion.isDeviceMotionAvailable {
            print("Si esta disponible el acelerometro")
            obtieneAcelerometro()
        }else{
            print("No esta disponible el acelerometro")
        }
        
    }

    func obtieneAcelerometro() {
        motion.accelerometerUpdateInterval = 0.5
        motion.startAccelerometerUpdates(to: OperationQueue.current!){
            (data, error) in
            
            if let datos = data{
                
                self.view.reloadInputViews()
                
                let x = datos.acceleration.x
                let y = datos.acceleration.y
                let z = datos.acceleration.z
                
                self.ejeX.text = "x: \(Double(x))"
                self.ejeY.text = "x: \(Double(y))"
                self.ejeZ.text = "x: \(Double(z))"
            }
        }
    }

}

