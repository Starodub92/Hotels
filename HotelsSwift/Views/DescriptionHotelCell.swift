//
//  DescriptionHotelCell.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 22.03.2022.
//

import UIKit

class DescriptionHotelCell: UITableViewCell {
    
    var descriptionHotel : UILabel = UILabel(frame: .zero)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        descriptionHotel.translatesAutoresizingMaskIntoConstraints = false
        descriptionHotel.numberOfLines = 0
        self.contentView.addSubview(descriptionHotel)
        
        setupDescriptionHotelConstraints()
        
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func setupDescriptionHotelConstraints() {
        
        let topDescriptionHotel = NSLayoutConstraint(item: descriptionHotel, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 5)
        
        let bottomDescriptionHotel = NSLayoutConstraint(item: descriptionHotel, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -5)
        
        let leftDescriptionHotel = NSLayoutConstraint(item: descriptionHotel, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 5)
        
        let rightDescriptionHotel = NSLayoutConstraint(item: descriptionHotel, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -5)
        
        contentView.addConstraints([topDescriptionHotel, bottomDescriptionHotel, leftDescriptionHotel, rightDescriptionHotel])
        
    }
    
}
