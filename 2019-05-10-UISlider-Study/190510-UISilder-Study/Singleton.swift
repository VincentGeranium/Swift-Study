//
//  Singleton.swift
//  190510-UISilder-Study
//
//  Created by 김광준 on 10/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class Singleton {
    static let shared = Singleton()
    
    var redSliderValue: Float = 0.0
    var blueSliderValue: Float = 0.0
    var greenSliderValue: Float = 0.0
    
    private init() { }
}
