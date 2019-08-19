//
//  ImageCard.swift
//  2019-08-19-gridStyleCollectionViewExample
//
//  Created by 김광준 on 19/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

let paris = UIImage.init(named: "Paris") ?? UIImage.init()
let bali = UIImage.init(named: "Bali") ?? UIImage.init()
let korea = UIImage.init(named: "Korea") ?? UIImage.init()
let la = UIImage.init(named: "LA") ?? UIImage.init()
let palau = UIImage.init(named: "Palau") ?? UIImage.init()

let nation: [UIImage] = [paris, bali, korea, la, palau]

struct ImageCard {
    let nationImage: UIImage
}

var imageCards: [ImageCard] = [
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
    ImageCard(nationImage: nation.randomElement()!),
]
