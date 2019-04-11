//
//  ViewController.swift
//  scrollView-assignment
//
//  Created by 김광준 on 11/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var scrollViewCont: UIScrollView!
    
    @IBOutlet var pageCont: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollViewCont.delegate = self
    }
    
//    func scrollViewDidEndDecelerating(_ sender: UIScrollView) {
//        let pageNumber = scrollViewCont.contentOffset.x/scrollViewCont.frame.width
//        pageCont.currentPage = Int(pageNumber)
//    }
    

}
extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollViewCont.frame.width
        pageCont.currentPage = Int(pageNumber)
    }
}
