//
//  MainTableViewCell.swift
//  2020-03-06-pagination-tableView
//
//  Created by 김광준 on 2020/03/06.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    static var cellId: String = "MainTableViewCell"
    
    var mainLabelText: String? {
        didSet {
            guard let textOfmainLabel = mainLabelText else { return }
            mainLabel.text = textOfmainLabel
        }
    }
    
    var mainLabel: UILabel = {
        var mainLabel: UILabel = UILabel()
        mainLabel.textAlignment = .center
        mainLabel.backgroundColor = .systemBlue
        return mainLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupMainLabel()
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
    
    private func setupMainLabel() {
        contentView.addSubview(mainLabel)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        let guide = contentView.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            mainLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 15),
            mainLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -15),
            mainLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }

}
