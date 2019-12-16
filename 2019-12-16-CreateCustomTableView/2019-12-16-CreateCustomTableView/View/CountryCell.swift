//
//  CountryCell.swift
//  2019-12-16-CreateCustomTableView
//
//  Created by 김광준 on 2019/12/16.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {
    
    static let cellId: String = "cellId"
    
    var countryData: Country? {
        didSet {
            countryNameLabel.text = countryData?.countryName
            flagImage.image = countryData?.flagImage
        }
    }
    
    private let countryNameLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.backgroundColor = .lightGray
        lbl.textAlignment = .center
        return lbl
    }()
    
    private let flagImage: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "flag_fr"))
        imgView.backgroundColor = .brown
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.contentView.backgroundColor = .cyan
        
        setupView()
    }
    
    private func setupView() {
        let guide = self.contentView.safeAreaLayoutGuide
        
        addSubview(flagImage)
        addSubview(countryNameLabel)
        
        flagImage.translatesAutoresizingMaskIntoConstraints = false
        
        countryNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            flagImage.topAnchor.constraint(equalTo: guide.topAnchor, constant: 10),
            flagImage.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 10),
            flagImage.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -10),
            flagImage.widthAnchor.constraint(equalToConstant: 90),
            
            countryNameLabel.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
            countryNameLabel.leadingAnchor.constraint(equalTo: flagImage.trailingAnchor, constant: 10),
            countryNameLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10),
        ])
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
    
}
