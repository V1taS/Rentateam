//
//  ShowImagePresenter.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 11.02.2021.
//  Copyright (c) 2021 SosinVitalii.com. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ShowImagePresentationLogic {
    func presentSomething(response: ShowImage.Something.Response)
}

class ShowImagePresenter: ShowImagePresentationLogic {
    
    weak var viewController: ShowImageDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: ShowImage.Something.Response) {
        let viewModel = ShowImage.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
