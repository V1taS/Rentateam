//
//  ImageManager.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 11.02.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import UIKit

class ImageManager {
    static let shared = ImageManager()
    
    private init() {}
    
    func getImageData(from url: String?) -> Data? {
        guard let stringURL = url else { return nil }
        guard let imageURL = URL(string: stringURL) else { return nil }
        guard let imageData = try? Data(contentsOf: imageURL) else { return nil }
        return imageData
    }
}
