//
//  ViewController.swift
//  FriendsListCollectionViewExample
//
//  Created by 김광준 on 2020/01/10.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var friends: [Friends] = []
    
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        //        layout.sectionInset.top = 50
//        layout.sectionInset.left = 50
//        layout.sectionInset.right = 50
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.register(FriendCollectionViewCell.self, forCellWithReuseIdentifier: FriendCollectionViewCell.cellID)
        //        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        setupCollectionView()
        jsonDecoding()
    }
    
    private func setupCollectionView() {
        view.addSubview(collectionView)
        collectionView.backgroundColor = .blue
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        let guide = view.safeAreaLayoutGuide
        
        
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: guide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    private func jsonDecoding() {
        let jsonDecoder = JSONDecoder()
        
        guard let dataAsset: NSDataAsset = NSDataAsset(name: "friends") else { return }
        do {
            self.friends = try jsonDecoder.decode([Friends].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        self.collectionView.reloadData()
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let halfWidth: CGFloat = UIScreen.main.bounds.width / 1.5
        
        return CGSize(width: halfWidth, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.friends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell: FriendCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: FriendCollectionViewCell.cellID, for: indexPath) as? FriendCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.infoData = self.friends[indexPath.item]
        
        return cell
    }
    
    
}

