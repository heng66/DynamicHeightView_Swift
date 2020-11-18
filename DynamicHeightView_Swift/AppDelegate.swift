//
//  AppDelegate.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit

@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        window?.backgroundColor = .white
        
        let controller = ViewController()
        let nav = UINavigationController(rootViewController: controller)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        return true
    }

}

