//
//  NetworkHotelManager.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 17.02.2022.
//

import Foundation

struct NetworkHotelManager {
    

    func fetchCurrentHotel() {
        let urlString = "https://raw.githubusercontent.com/Sinweaver/HotelsJson/master/hotelsList.json"

        let url = URL(string: urlString)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { (data, response, error) in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            self.parseJSONE(withData: data)
                
            }
        }
        task.resume()
    }
    
    func parseJSONE(withData data: Data) {
        let decoder = JSONDecoder()
        do {
            try decoder.decode(CurrentHotelsData.self, from: data)
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}
