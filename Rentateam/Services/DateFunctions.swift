//
//  DateFunctions.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 11.02.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation

func getDateStringFull() -> String {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE d MMMM HH:mm"
    dateFormatter.locale = Locale(identifier: "ru_RU")
    let time = dateFormatter.string(from: date)
    return time
}
