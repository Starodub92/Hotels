//
//  ViewController.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 17.02.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var networkHotelManeger = NetworkHotelManager()
    var hotels: [CurrentHotelsData] = []
    private var mainTableView: UITableView = UITableView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkHotelManeger.fetchCurrentHotel { [weak self]  hotels in
            guard let self = self else { return }
            self.hotels = hotels
            self.mainTableView.reloadData()
        } failure: { error in
            print(error.localizedDescription)
        }

        mainTableView.delegate = self
        mainTableView.dataSource = self
        self.view.addSubview(mainTableView)
        mainTableView.translatesAutoresizingMaskIntoConstraints = false
        mainTableView.register(MainTotalCell.self, forCellReuseIdentifier: "MyCell")
        setupMainTableVeiwConstrats()
    }
    
    func setupMainTableVeiwConstrats() {
        
        let topMainTableView = NSLayoutConstraint(item:mainTableView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let bottomMainTableView = NSLayoutConstraint(item: mainTableView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftMainTableView = NSLayoutConstraint(item: mainTableView, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 0)
        
        let rightMainTableView = NSLayoutConstraint(item: mainTableView, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 0)
        
        
        view.addConstraints ([topMainTableView, bottomMainTableView, leftMainTableView, rightMainTableView])
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotels.count
        
    }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! MainTotalCell
            let hotel = hotels[indexPath.row]
            
           // cell.imageHotelCell.image = hotel
            cell.nameHotelCell.text = hotel.name
            cell.addressHotelCell.text = hotel.address
        return cell
        
    }
}

