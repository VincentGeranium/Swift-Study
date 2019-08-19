//
//  CollectionViewMetric.swift
//  2019-08-19-GridStyleCollectionViewExample
//
//  Created by 김광준 on 19/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

enum Metric {
    static let lineSpacing: CGFloat = 3
    static let itemSpacing: CGFloat = 3
    static let nextOffSet: CGFloat = 5
    
    static let numberOfLine: CGFloat = 2
    static let numberOfItem: CGFloat = 2
    
    static let inset: UIEdgeInsets = .init(top: 6, left: 6, bottom: 6, right: 6)
    
    static var horizontalPadding: CGFloat {
        return Metric.inset.top + Metric.inset.bottom
    }
}
