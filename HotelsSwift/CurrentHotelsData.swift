//
//  CurrentHotelsData.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 17.02.2022.
//

import Foundation

struct CurrentHotelsData : Decodable {
    let name: String
    let address : String
    let phone: String
    let stars: Int
    let images : [String]
    let description : String
    
    var imageUrl: URL?  {
            
            let baseURl = "https://raw.githubusercontent.com/Sinweaver/HotelsJson/master/"
            let nameUrl = images.first
            let fullNameUrl = baseURl + (nameUrl)!
            let fileUrl = URL(string: fullNameUrl)
            
            return fileUrl
    }

}

