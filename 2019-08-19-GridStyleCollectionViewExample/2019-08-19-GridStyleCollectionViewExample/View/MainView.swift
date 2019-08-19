//
//  MainView.swift
//  2019-08-19-gridStyleCollectionViewExample
//
//  Created by 김광준 on 19/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    // MARK: - UI Properties
    let layout = UICollectionViewFlowLayout()
    lazy private var mainCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    
    // MARK: - Properties
    private var source: [ImageCard] = imageCards
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        setupLayout()
        setupConfigure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        let collectionViewCellWidth: CGFloat = UIScreen.main.bounds.width * 0.7
        
        self.addSubview(mainCollectionView)
        mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainCollectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            mainCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            mainCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            mainCollectionView.heightAnchor.constraint(equalToConstant: collectionViewCellWidth+1),
            ])
    }
    
    private func setupConfigure() {
        layout.scrollDirection = .horizontal
        mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.identifier)
        mainCollectionView.backgroundColor = .white
    }
}

extension MainView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return source.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as! MainCollectionViewCell
        cell.setData(source[indexPath.item])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let lineSpcing = Metric.lineSpacing * (Metric.numberOfLine - 1)
        let horizontalPadding = Metric.inset.left + Metric.inset.right + Metric.nextOffSet
        
        let itemSpacing = Metric.itemSpacing * (Metric.numberOfItem - 1)
        let verticalPadding = Metric.inset.top + Metric.inset.bottom
        
        let width = (collectionView.frame.width - lineSpcing - horizontalPadding) / Metric.numberOfLine
        let height = (collectionView.frame.height - itemSpacing - verticalPadding) / Metric.numberOfItem
        
        return CGSize(width: width.rounded(.down), height: height.rounded(.down))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Metric.lineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return Metric.itemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return Metric.inset
    }
}

