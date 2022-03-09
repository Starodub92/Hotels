//
//  MainTotalCell.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 17.02.2022.
//

import UIKit

class MainTotalCell: UITableViewCell {
    
    var imageHotelCell: UIImageView = UIImageView(frame: .zero)
    var nameHotelCell : UILabel = UILabel(frame: .zero)
    var addressHotelCell : UILabel = UILabel(frame: .zero)
    var backgroundViewStar : UIView = UIView(frame: .zero)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imageHotelCell.contentMode = .scaleAspectFill
        imageHotelCell.clipsToBounds = true
        imageHotelCell.translatesAutoresizingMaskIntoConstraints = false
        imageHotelCell.backgroundColor = .red
        self.contentView.addSubview(imageHotelCell)
        
        nameHotelCell.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(nameHotelCell)
        
        addressHotelCell.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(addressHotelCell)
        
        backgroundViewStar.translatesAutoresizingMaskIntoConstraints = false
        backgroundViewStar.backgroundColor = .green
        self.contentView.addSubview(backgroundViewStar)
        
        setupImageHotelCellConstraint()
        setupNameHotelCellConstraint()
        setupAddressHotelCellConstraint()
        setupBackgroundViewStar()
    }
    
    func setupImageHotelCellConstraint() {
        
        let topImageHotelCell = NSLayoutConstraint(item: imageHotelCell, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let leftImageHotelCell = NSLayoutConstraint(item: imageHotelCell, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 0)
        
        let heightImageHotelCell = NSLayoutConstraint(item: imageHotelCell, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: imageHotelCell, attribute: NSLayoutConstraint.Attribute.height, multiplier: 0.0, constant: 100)
        
        let widthImageHotelCell = NSLayoutConstraint(item: imageHotelCell, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: imageHotelCell, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.0, constant: 100)
        
        contentView.addConstraints([topImageHotelCell, leftImageHotelCell, heightImageHotelCell, widthImageHotelCell])
    }
    
    func setupNameHotelCellConstraint() {
        
        let topNameHotelCell = NSLayoutConstraint(item: nameHotelCell, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 5)
        
        let leftNameHotelCell = NSLayoutConstraint(item: nameHotelCell, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: imageHotelCell, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 5)
        
        let rightNameHotelCell = NSLayoutConstraint(item: nameHotelCell, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -5)
        
        contentView.addConstraints([topNameHotelCell, leftNameHotelCell, rightNameHotelCell])
    }
    
    func setupAddressHotelCellConstraint() {
        
        let bottomAddressHotelCell = NSLayoutConstraint(item: addressHotelCell, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -5)
        
        let leftAddressHotelCell = NSLayoutConstraint(item: addressHotelCell, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: imageHotelCell, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 5)
        
        let rightAddressHotelCell = NSLayoutConstraint(item: addressHotelCell, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -10)
        
        contentView.addConstraints([bottomAddressHotelCell, leftAddressHotelCell, rightAddressHotelCell])
    }
    
    func setupBackgroundViewStar() {
        
        let topAddressHotelCell = NSLayoutConstraint(item: backgroundViewStar, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nameHotelCell, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 5)
        
        let leftAddressHotelCell = NSLayoutConstraint(item: backgroundViewStar, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: imageHotelCell, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 5)
        
        let rightAddressHotelCell = NSLayoutConstraint(item: backgroundViewStar, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -5)
        
        let heightAddressHotelCell = NSLayoutConstraint(item: backgroundViewStar, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: backgroundViewStar, attribute: NSLayoutConstraint.Attribute.height, multiplier: 0.0, constant: 30)
        
        contentView.addConstraints([topAddressHotelCell, leftAddressHotelCell, rightAddressHotelCell, heightAddressHotelCell])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }    
}
