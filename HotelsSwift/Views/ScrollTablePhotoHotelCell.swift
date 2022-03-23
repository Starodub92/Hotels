//
//  ScrollTablePhotoHotelCell.swift
//  HotelsSwift
//
//  Created by Дмитрий Стародубцев on 22.03.2022.
//

import UIKit
import FSPagerView

class ScrollTablePhotoHotelCell: UITableViewCell {
    
    let isIPad: Bool = UIDevice.current.userInterfaceIdiom == .pad
    
    var images: [URL] = []
    
    let pagerView = FSPagerView(frame: .zero)
    
    let pageControl = FSPageControl()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        pagerView.dataSource = self
        pagerView.delegate = self
        pagerView.automaticSlidingInterval =  2
        pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
        pagerView.translatesAutoresizingMaskIntoConstraints = false
        pagerView.transformer = FSPagerViewTransformer(type: .zoomOut)
        self.contentView.addSubview(pagerView)
        
        pageControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        pageControl.frame = CGRect(x: 0, y: 100, width: self.contentView.frame.size.width, height: 30)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.pagerView.addSubview(self.pageControl)
        
        setupPagerViewConstraint()
        setupPageControlConstraint()
        
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(images: [URL]) {
        self.images = images
        pagerView.reloadData()
    }
    
    func setupPagerViewConstraint() {
        
        let topPagerView = NSLayoutConstraint(item: pagerView, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 0)
        
        let bottomPagerView = NSLayoutConstraint(item: pagerView, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: 0)
        
        let leftPagerView = NSLayoutConstraint(item: pagerView, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 0)
        
        let rightPagerView = NSLayoutConstraint(item: pagerView, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 0)
        
        let heightPagerView = NSLayoutConstraint(item: pagerView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: pagerView, attribute: NSLayoutConstraint.Attribute.height, multiplier: 0.0, constant: isIPad ? 430 : 250)
        
        contentView.addConstraints([topPagerView, bottomPagerView, leftPagerView, rightPagerView, heightPagerView])
    }
    
    func setupPageControlConstraint() {
        
        let bottomPageControl = NSLayoutConstraint(item: pageControl, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -5)
        
        let leftPageControl = NSLayoutConstraint(item: pageControl, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 15)
        
        let rightPageControl = NSLayoutConstraint(item: pageControl, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: contentView, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: -15)
        
        let heightPageControl = NSLayoutConstraint(item: pageControl, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: pageControl, attribute: NSLayoutConstraint.Attribute.height, multiplier: 0.0, constant: 30)
        
        contentView.addConstraints([bottomPageControl, leftPageControl, rightPageControl, heightPageControl])
    }
}

extension ScrollTablePhotoHotelCell: FSPagerViewDataSource {
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        pageControl.numberOfPages = self.images.count
        return images.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        let imageUrlString = images[index]
        cell.imageView?.loadImage(url: imageUrlString)
        return cell
    }
}

extension ScrollTablePhotoHotelCell: FSPagerViewDelegate {
    func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
        self.pageControl.currentPage = targetIndex
    }
    
    func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
        self.pageControl.currentPage = pagerView.currentIndex
    }
    
}
