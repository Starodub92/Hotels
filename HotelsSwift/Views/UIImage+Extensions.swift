//
//  UIImage+Extensions.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 09.03.2022.
//

import Foundation
import Kingfisher

extension UIImageView {
    
    func loadImage(_ urlString: String) {
        let url = URL(string: urlString)
        kf.setImage(with: url)
    }
    
    func loadImage(url: URL) {
        kf.setImage(with: url)
    }
}
