//
//  CustomAlbum.swift
//  uplodaUsedFirebaseStorage
//
//  Created by 김광준 on 28/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//  talk is cheap show me the code

import Foundation
import Photos

class CustomAlbum: NSObject {
    var name = "Custom Album"
    
    private var assetCollection: PHAssetCollection!
    
    init(name: String) {
        self.name = name
        super.init()
        
        if let assetCollection = fetchAssetColletionForAlbum() {
            self.assetCollection = assetCollection
            return
        }
    }
    
    func checkAuthorizationWithHandler(completion: @escaping (Result<Bool, Error>) -> ()) {
        if PHPhotoLibrary.authorizationStatus() == .notDetermined {
            PHPhotoLibrary.requestAuthorization({ (status) in
                self.checkAuthorizationWithHandler(completion: completion)
            })
        } else if PHPhotoLibrary.authorizationStatus() == .authorized {
            self.creatAlbumIfNeeded { (success) in
                completion(success)
            }
        } else {
            completion(.failure(CustomAlbumError.notAuthorized))
        }
    }
    
    private func creatAlbumIfNeeded(completion: @escaping (Result<Bool, Error>) -> ()) {
        if let assetCollection = fetchAssetColletionForAlbum() {
            self.assetCollection = assetCollection
            completion(.success(true))
        } else {
            PHPhotoLibrary.shared().performChanges({
                PHAssetCollectionChangeRequest.creationRequestForAssetCollection(withTitle: self.name)
            }) { success, error in
                if let error = error {
                    completion(.failure(error))
                }
                if success {
                    self.assetCollection = self.fetchAssetColletionForAlbum()
                    completion(.success(true))
                } else {
                    completion(.success(false))
                }
            }
        }
    }
    
    private func fetchAssetColletionForAlbum() -> PHAssetCollection? {
        let fetchOptions = PHFetchOptions()
        fetchOptions.predicate = NSPredicate(format: "title = %@", name)
        let collection = PHAssetCollection.fetchAssetCollections(with: .album, subtype: .any, options: fetchOptions)
        
        if let _: AnyObject = collection.firstObject {
            return collection.firstObject
        }
        return nil
    }
    
    func save(image: UIImage, completion: @escaping (Result<Bool, Error>) -> ()) {
        self.checkAuthorizationWithHandler { (result) in
            switch result {
            case .success(let success):
                if success, self.assetCollection != nil {
                    PHPhotoLibrary.shared().performChanges({
                        let assetChangeRequest =
                            PHAssetChangeRequest.creationRequestForAsset(from: image)
                        let assetPlaceHolder =
                            assetChangeRequest.placeholderForCreatedAsset
                        if let albumChangeRequest =
                            PHAssetCollectionChangeRequest(for: self.assetCollection) {
                            let enumeration: NSArray = [assetPlaceHolder!]
                            albumChangeRequest.addAssets(enumeration)
                        }
                    }, completionHandler: { (success, error) in
                        if let error = error {
                            print("Error writing to image library: \(error.localizedDescription)")
                            completion(.failure(error))
                            return
                        }
                        completion(.success(success))
                    })
                }
            case .failure(let err):
                completion(.failure(err))
            }
            
        }
    }
}





