//
//  NetworkManager.swift
//  Rentateam
//
//  Created by Vitalii Sosin on 11.02.2021.
//  Copyright © 2021 SosinVitalii.com. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let pixabayURL = "https://pixabay.com/api/?key=9495436-1929c3a3cd10dc41e782e3528"
    
    private init() {}
    
    func fetchData(completion: @escaping (_ data: Pixabay) -> Void) {
        guard let url = URL(string: pixabayURL) else { return }
        
        DispatchQueue.main.async {
            AF.request(url, method: .get).response { response in
                switch response.result {
                case .success(let data):
                    guard let data = data,
                          let dataArray = try? JSONDecoder().decode(Pixabay.self, from: data) else { fatalError("Could not parse a data") }
                    completion(dataArray)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
        
    }
}
