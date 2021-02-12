//
//  ImageListInteractor.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 12.02.2021.
//  Copyright (c) 2021 SosinVitalii.com. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

protocol ImageListInteractorLogic: AnyObject {
    func loadData()
}

final class ImageListInteractor {
    var presenter: ImageListPresenterLogic?
}

extension ImageListInteractor: ImageListInteractorLogic {
    func loadData() {
        fetchData()
    }
}

extension ImageListInteractor {
    func fetchData() {
        NetworkManager.shared.fetchData {[unowned self] dataArray in
            self.presenter?.presentData(data: dataArray)
        }
    }
}
