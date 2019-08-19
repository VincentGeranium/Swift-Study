//
//  MainCollectionViewCell.swift
//  2019-08-19-gridStyleCollectionViewExample
//
//  Created by 김광준 on 19/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    static let identifier = "mainCollectionViewCell"
    
    let mainImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
        setupConfigure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        contentView.addSubview(mainImageView)
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            mainImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mainImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            ])
    }
    
    private func setupConfigure() {
        self.contentView.clipsToBounds = true
        self.contentView.layer.cornerRadius = 3
        self.contentView.layer.borderWidth = 0.5
        self.contentView.layer.borderColor = UIColor.lightGray.cgColor
        self.contentView.backgroundColor = .white
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 3
        
        mainImageView.contentMode = .scaleAspectFill
        mainImageView.layer.masksToBounds = true
        
    }
    
    func setData(_ images: ImageCard) {
        mainImageView.image = images.nationImage
    }
    
}
