//
//  SceneDelegate.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 11.02.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.overrideUserInterfaceStyle = .light
            window.rootViewController = UINavigationController(rootViewController: ImageListViewController())
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

