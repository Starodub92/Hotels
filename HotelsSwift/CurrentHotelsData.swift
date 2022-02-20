//
//  CurrentHotelsData.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 17.02.2022.
//

import Foundation
import Alamofire
import SwiftyJSON


struct CurrentHotelsData : Decodable {
    let name: String
    let address : String
    let phone: String
    let stars: Int
    let images : [String]
    let description : String
    
    var imageUrl: URL?  {
        if let urlString = images.first, let url = URL(string: urlString) {
            return url
        }
        return nil
    }
}

