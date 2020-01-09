//
//  ViewController.swift
//  CvCellExample
//
//  Created by 김광준 on 2020/01/09.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageData: [CustomData] = [
        CustomData(title: "bikeTire", image: #imageLiteral(resourceName: "bikeTire"), url: "freeImage.com/bikeTire"),
        CustomData(title: "coffee", image: #imageLiteral(resourceName: "coffee"), url: "freeImage.com/coffee"),
        CustomData(title: "firework", image: #imageLiteral(resourceName: "firework"), url: "freeImage.com/firework"),
        CustomData(title: "nightStreet", image: #imageLiteral(resourceName: "nightStreet"), url: "freeImage.com/nightStreet"),
    ]
    
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        setupCollectionView()
        
        
        
    }
    
    private func setupCollectionView() {
        view.addSubview(collectionView)
        collectionView.backgroundColor = .white
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            collectionView.heightAnchor.constraint(equalTo: collectionView.widthAnchor, multiplier: 0.5),
//            collectionView.heightAnchor.constraint(equalToConstant: 167.0)
        ])
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print(collectionView.frame.width)
        print("🟡 : \(collectionView.frame.width * 0.5)")
        return CGSize(width: collectionView.frame.width / 2.5, height: collectionView.frame.width / 2)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell: CustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CustomCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        
        cell.imageData = self.imageData[indexPath.item]
        return cell
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        cell.backgroundColor = .red
//        return cell
    }
    
    
}

