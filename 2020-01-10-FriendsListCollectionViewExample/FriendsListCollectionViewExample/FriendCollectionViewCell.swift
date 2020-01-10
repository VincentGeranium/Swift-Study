//
//  FriendCollectionViewCell.swift
//  FriendsListCollectionViewExample
//
//  Created by 김광준 on 2020/01/10.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class FriendCollectionViewCell: UICollectionViewCell {
    
    static let cellID: String = "cell"
    
    var infoData: Friends? {
        didSet {
            guard let infoData = infoData else { return }
            nameAndAgeLabel.text = infoData.nameAndAge
            fullAddressLabel.text = infoData.fullAddress
        }
    }
    
    fileprivate let nameAndAgeLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.backgroundColor = .white
        lbl.textColor = .black
        return lbl
    }()
    
    fileprivate let fullAddressLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.backgroundColor = .white
        lbl.textColor = .black
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupNameAndAgeLabel()
        setupFullAddressLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupNameAndAgeLabel() {
        contentView.addSubview(nameAndAgeLabel)
        let height = ((contentView.bounds.height / 2) - 20)
        nameAndAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameAndAgeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            nameAndAgeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            nameAndAgeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            nameAndAgeLabel.heightAnchor.constraint(equalToConstant: height),
//            nameAndAgeLabel.bottomAnchor.constraint(equalTo: fullAddressLabel.topAnchor, constant: -10),
        ])
    }
    
    private func setupFullAddressLabel() {
        contentView.addSubview(fullAddressLabel)
        fullAddressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fullAddressLabel.topAnchor.constraint(equalTo: nameAndAgeLabel.bottomAnchor, constant: 10),
            fullAddressLabel.leadingAnchor.constraint(equalTo: nameAndAgeLabel.leadingAnchor),
            fullAddressLabel.trailingAnchor.constraint(equalTo: nameAndAgeLabel.trailingAnchor),
            fullAddressLabel.bottomAnchor.constraint(greaterThanOrEqualTo: contentView.bottomAnchor, constant: -10),
        ])
    }
}
