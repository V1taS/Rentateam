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
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let createImageListVC = ModuleBuilder.createImageListVC()
        let navigationVC = UINavigationController(rootViewController: createImageListVC)
        
        window?.overrideUserInterfaceStyle = .light
        window?.rootViewController = navigationVC
        window?.makeKeyAndVisible()
    }
}

