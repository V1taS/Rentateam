//
//  Pixabay.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 11.02.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation

struct Pixabay: Codable {
    let total: Int
    let hits: [Hits]
    let totalHits: Int
}

struct Hits: Codable  {
    let previewURL: String
}
