//
//  MovieTableViewCell.swift
//  MyMovieChartWithCode
//
//  Created by 김광준 on 2020/04/16.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    static let cellID: String = "MovieChartCell"
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupMovieTableViewCell() {
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
