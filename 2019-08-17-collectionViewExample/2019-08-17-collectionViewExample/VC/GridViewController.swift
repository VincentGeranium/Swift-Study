//
//  GridViewController.swift
//  2019-08-17-collectionViewExample
//
//  Created by 김광준 on 17/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

final class GridViewController: UIViewController {
    
    // MARK: - CollectionViewMetric
    
    private enum Metric {
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
    
    // MARK: - Property
    
    private var source: [Card] = cards
    
    lazy private var collectionView: UICollectionView = {
        
        // layout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        // view
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        return collectionView
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureCollectionView()
        
    }
    
    private func configureCollectionView() {
        let guide = view.safeAreaLayoutGuide
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: guide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 300),
            ])
    }
}

// MARK: - UICollectionViewDataSource

extension GridViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return source.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = source[indexPath.item].color
        return cell
    }
}

// MARK: - UICollectionViewFlowLayout

extension GridViewController: UICollectionViewDelegateFlowLayout {
    
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