//
//  CustomTableViewCell.swift
//  TableViewSharkExample
//
//  Created by 김광준 on 2019/11/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let cellIdentifier: String = "customTableViewCell"
    
    private let img: UIImageView = {
        let imgView: UIImageView = UIImageView()
        imgView.image = UIImage(named: "flag_de")
        return imgView
    }()
    
    private let label: UILabel = {
        let label: UILabel = UILabel()
        label.text = "독일"
        label.textColor = UIColor.gray
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setConstraint() {
        contentView.addSubview(img)
        contentView.addSubview(label)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            img.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            img.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            img.widthAnchor.constraint(equalToConstant: 74),
            img.heightAnchor.constraint(equalToConstant: 64),
            
            label.leadingAnchor.constraint(equalTo: img.trailingAnchor, constant: 15),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 15),
            label.centerYAnchor.constraint(equalTo: img.centerYAnchor),
        ])
    }

}
