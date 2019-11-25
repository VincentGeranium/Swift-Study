//
//  CustomTableViewCell.swift
//  transferDataUsedBySegue
//
//  Created by 김광준 on 2019/11/25.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var leftLabel: UILabel!
    @IBOutlet var rightLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
