//
//  NetworkHotelManager.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 17.02.2022.
//

import Foundation

struct NetworkHotelManager {
    

    func fetchCurrentHotel(success: @escaping (([CurrentHotelsData]) -> Void), failure: @escaping ((Error) -> Void)) {
        let urlString = "https://raw.githubusercontent.com/Sinweaver/HotelsJson/master/hotelsList.json"

        let url = URL(string: urlString)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { (data, response, error) in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
                do {
                    let decoder = JSONDecoder()
                    let hotels = try decoder.decode([CurrentHotelsData].self, from: data)
                    DispatchQueue.main.async {
                        success(hotels)
                    }
                    
                } catch let error as NSError {
                    DispatchQueue.main.async {
                        failure(error)
                    }
                   
                }
            } else {
                DispatchQueue.main.async {
                    failure(error ?? NSError(domain: "fetchCurrentHotel", code: -1, userInfo: [:]))
                }
            }
        }
        task.resume()
    }
}
