//
//  AppDelegate.swift
//  cicloApp
//
//  Created by Maria Teresa Jimenez on 05/04/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Se inicio mi aplicación")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        print("La app va a entrar en modo background")
    }
    // MARK: UISceneSession Lifecycle
    
    func applicationDidEnterBackground(_ application: UIApplication){
        print("La app esta en modo background")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication){
        print("La app generó un aviso de memoria")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication){
        print("La app paso de modo background a modo activo")
    }

    func applicationDidBecomeActive(_ application: UIApplication){
        print("La app ya se hizo activa?")
    }
}

