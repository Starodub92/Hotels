//
//  ContactInfoItemView.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 22.03.2022.
//

import UIKit

class ContactInfoItemView: UIView {
    
    var logoAddress : UIImageView = UIImageView(frame: .zero)
    var detailAddress : UILabel = UILabel(frame: .zero)
    
    var logoPhone : UIImageView = UIImageView(frame: .zero)
    var detailPhone : UILabel = UILabel(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        logoAddress.contentMode = .scaleAspectFill
        logoAddress.contentMode = .scaleAspectFit
        logoAddress.clipsToBounds = true
        logoAddress.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(logoAddress)
        setupLogoAddressConstraints()
        
        detailAddress.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(detailAddress)
        detailAddress.numberOfLines = 0
        setupDetailAddressConstraints()
        
        logoPhone.contentMode = .scaleAspectFill
        logoPhone.contentMode = .scaleAspectFit
        logoPhone.clipsToBounds = true
        logoPhone.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(logoPhone)
        setuplogoPhoneConstraints()
        
        detailPhone.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(detailPhone)
        setupDetailPhoneConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLogoAddressConstraints() {
        
        let topLogoAddress = NSLayoutConstraint(item: logoAddress, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let bottomLogoAddress = NSLayoutConstraint(item: logoAddress, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftLogoAddress = NSLayoutConstraint(item: logoAddress, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 0)
        
        let widthLogoAddress = NSLayoutConstraint(item: logoAddress, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: logoAddress, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.0, constant: 24)
        
        self.addConstraints([topLogoAddress, bottomLogoAddress, leftLogoAddress, widthLogoAddress])
    }
    
    func setupDetailAddressConstraints() {
        
        let topDetailAddress = NSLayoutConstraint(item: detailAddress, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let bottomDetailAddress = NSLayoutConstraint(item: detailAddress, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftDetailAddress = NSLayoutConstraint(item: detailAddress, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: logoAddress, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 0)
        
        let rightDetailAddress = NSLayoutConstraint(item: detailAddress, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 0)
        
        self.addConstraints([topDetailAddress, bottomDetailAddress, leftDetailAddress, rightDetailAddress])
        
    }
    
    func setuplogoPhoneConstraints() {
        
        let toplogoPhone = NSLayoutConstraint(item: logoPhone, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let bottomlogoPhones = NSLayoutConstraint(item: logoPhone, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftlogoPhone = NSLayoutConstraint(item: logoPhone, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 0)
        
        let widthlogoPhone = NSLayoutConstraint(item: logoPhone, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: logoPhone, attribute: NSLayoutConstraint.Attribute.width, multiplier: 0.0, constant: 24)
        
        self.addConstraints([toplogoPhone, bottomlogoPhones, leftlogoPhone, widthlogoPhone])
    }
    
    func setupDetailPhoneConstraints() {
        
        let topDetailPhone = NSLayoutConstraint(item: detailPhone, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let bottomDetailPhone = NSLayoutConstraint(item: detailPhone, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftDetailPhone = NSLayoutConstraint(item: detailPhone, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: logoPhone, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 0)
        
        let rightDetailPhone = NSLayoutConstraint(item: detailPhone, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 0)
        
        self.addConstraints([topDetailPhone, bottomDetailPhone, leftDetailPhone, rightDetailPhone])
        
    }
    
}


