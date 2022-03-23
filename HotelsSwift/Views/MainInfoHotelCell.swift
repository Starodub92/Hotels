//
//  MainInfoHotelCell.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 22.03.2022.
//

import UIKit
import Cosmos

class MainInfoHotelCell: UITableViewCell {
    
    var detailNameLabel: UILabel = UILabel(frame: .zero)
    var detailStarRatingView : UIView = UIView(frame: .zero)
    
    var addressView : ContactInfoItemView = ContactInfoItemView(frame: .zero)
    var phoneView : ContactInfoItemView = ContactInfoItemView(frame: .zero)
    
    lazy var cosmosView: CosmosView = {
        let view = CosmosView()
        frame = CGRect(x: 0 , y: 0, width: 130,height: 20)
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        detailNameLabel.translatesAutoresizingMaskIntoConstraints = false
        detailNameLabel.numberOfLines = 0
        self.contentView.addSubview(detailNameLabel)
        setupDetailNameLabelConstraint()
        
        detailStarRatingView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(detailStarRatingView)
        setupDetailStarRatingViewConstraint()
        
        addressView.logoAddress.image = UIImage (named: "address")
        addressView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(addressView)
        setupAddressViewConstraint()
        
        phoneView.logoPhone.image = UIImage (named: "phone")
        phoneView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(phoneView)
        setupPhoneViewConstraint()
        
        cosmosView.settings.emptyBorderColor = UIColor.black
        cosmosView.settings.filledColor = UIColor.black
        cosmosView.settings.updateOnTouch = false
        self.detailStarRatingView.addSubview(cosmosView)
        
        self.selectionStyle = .none
    }
    
    func starNumber(value : Int)  {
        cosmosView.rating = Double(value)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupDetailNameLabelConstraint(){
        
        let topDetailNameLabel = NSLayoutConstraint(item: detailNameLabel, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 5)
        
        let leftDetailNameLabel = NSLayoutConstraint(item: detailNameLabel, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 5)
        
        let rightDetailNameLabel = NSLayoutConstraint(item: detailNameLabel, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -5)
        
        contentView.addConstraints([topDetailNameLabel, leftDetailNameLabel, rightDetailNameLabel])
    }
    
    func setupDetailStarRatingViewConstraint() {
        
        let topDetailStarRating = NSLayoutConstraint(item: detailStarRatingView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: detailNameLabel, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftDetailStarRating = NSLayoutConstraint(item: detailStarRatingView, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 5)
        
        let rightDetailStarRating = NSLayoutConstraint(item: detailStarRatingView, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -5)
        
        let heightDetailStarRating = NSLayoutConstraint(item: detailStarRatingView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: detailStarRatingView, attribute: NSLayoutConstraint.Attribute.height, multiplier: 0.0, constant: 24)
        
        contentView.addConstraints([topDetailStarRating, leftDetailStarRating, rightDetailStarRating, heightDetailStarRating])
    }
    
    func setupAddressViewConstraint() {
        
        let topAddressView = NSLayoutConstraint(item: addressView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: detailStarRatingView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftAddressView = NSLayoutConstraint(item: addressView, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 5)
        
        let rightAddressView = NSLayoutConstraint(item: addressView, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -5)
        
        contentView.addConstraints([topAddressView, leftAddressView, rightAddressView])
    }
    
    func setupPhoneViewConstraint() {
        
        let topPhoneView = NSLayoutConstraint(item: phoneView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: addressView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftPhoneView = NSLayoutConstraint(item: phoneView, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 5)
        
        let rightPhoneView = NSLayoutConstraint(item: phoneView, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -5)
        
        let bottomPhoneView = NSLayoutConstraint(item: phoneView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -5)
        
        contentView.addConstraints([topPhoneView, bottomPhoneView, leftPhoneView, rightPhoneView])
    }
    
}
