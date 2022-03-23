//
//  DetailHotelController.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 22.03.2022.
//

import UIKit

class DetailHotelController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    enum DetailSection {
        case photos, main, description
    }
    
    var detailTableView: UITableView = UITableView(frame: .zero)
    var hotel: CurrentHotelsData?
    let sections: [DetailSection] = [.photos, .main, .description]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTableView.delegate = self
        detailTableView.dataSource = self
        detailTableView.translatesAutoresizingMaskIntoConstraints = false
        detailTableView.rowHeight = UITableView.automaticDimension
        self.navigationItem.title = hotel?.name
        self.view.addSubview(detailTableView)
        
        detailTableView.register(MainInfoHotelCell.self, forCellReuseIdentifier: "CellMainInfo")
        detailTableView.register(DescriptionHotelCell.self, forCellReuseIdentifier: "CellDescription")
        detailTableView.register(ScrollTablePhotoHotelCell.self, forCellReuseIdentifier: "Cell")
        
        
        setupDetailTableViewConstraint()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentSection = sections[indexPath.row]
        switch currentSection {
        case .photos:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ScrollTablePhotoHotelCell
            cell.setData(images: hotel?.imagesUrls ?? [])
            return cell
        case .main:
            let cellMainInfo = tableView.dequeueReusableCell(withIdentifier: "CellMainInfo") as! MainInfoHotelCell
            cellMainInfo.detailNameLabel.text = hotel?.name
            cellMainInfo.addressView.detailAddress.text = hotel?.address
            cellMainInfo.phoneView.detailPhone.text = hotel?.phone
            cellMainInfo.starNumber(value: hotel!.stars)
            return cellMainInfo
        case .description:
            let cellDescription = tableView.dequeueReusableCell(withIdentifier: "CellDescription") as! DescriptionHotelCell
            cellDescription.descriptionHotel.text = hotel?.description
            cellDescription.descriptionHotel .sizeToFit()
            return cellDescription
        }
        
    }
    
    func setupDetailTableViewConstraint() {
        
        let topDetailTableView = NSLayoutConstraint(item: detailTableView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let bottomDetailTableView = NSLayoutConstraint(item: detailTableView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftDetailTableView = NSLayoutConstraint(item: detailTableView, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 0)
        
        let rightDetailTableView = NSLayoutConstraint(item: detailTableView, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 0)
        
        
        view.addConstraints ([topDetailTableView, bottomDetailTableView, leftDetailTableView, rightDetailTableView])
    }
    
}
