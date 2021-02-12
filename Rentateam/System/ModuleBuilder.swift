//
//  ModuleBuilder.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 12.02.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

protocol Builder {
    static func createImageListVC() -> UIViewController
}

final class ModuleBuilder: Builder {
    
    static func createImageListVC() -> UIViewController {
        
        let viewController = ImageListViewController()
        let interactor = ImageListInteractor()
        let presenter = ImageListPresenter()
        let router = ImageListRouter()
      
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        
        return viewController
    }
    
    static func createShowImageVC() -> UIViewController {
        
        let viewController = ShowImageViewController()
        let interactor = ShowImageInteractor()
        let router = ShowImageRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        router.dataStore = interactor
        
        return viewController
    }
}
