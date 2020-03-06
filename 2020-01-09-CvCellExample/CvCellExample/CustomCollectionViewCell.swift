//
//  CustomCollectionViewCell.swift
//  CvCellExample
//
//  Created by 김광준 on 2020/01/09.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    var imageData: CustomData? {
        didSet {
            guard let imageData = imageData else { return }
            backImage.image = imageData.image
        }
    }
    
    fileprivate let backImage: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "nightStreet")
        iv.layer.cornerRadius = 12
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
//    #imageLiteral(resourceName: "nightStreet")
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupBackImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupBackImage() {
        contentView.addSubview(backImage)
        NSLayoutConstraint.activate([
            backImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            backImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            backImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            backImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
    
}
