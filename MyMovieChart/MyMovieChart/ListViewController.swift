//
//  ListViewController.swift
//  MyMovieChart
//
//  Created by 김광준 on 2020/04/10.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UITableViewController {
    var list: [MovieVO] = [MovieVO]()
    
    override func viewDidLoad() {
        // 첫번째 행
        var mvo = MovieVO()
        mvo.title = "다크나이트"
        mvo.description = "히어로물에 철학에 음악까지 더해져 예술이 되다."
        mvo.opendate = "2008-09-04"
        mvo.rating = 8.95
        // 배열에 추가
        self.list.append(mvo)
        
        // 두번째 행
        mvo = MovieVO()
        mvo.title = "호우시절"
        mvo.description = "때를 알고 내리는 좋은 비"
        mvo.opendate = "2009-10-08"
        mvo.rating = 7.31
        // 배열에 추가
        self.list.append(mvo)
        
        // 세번째 행
        mvo = MovieVO()
        mvo.title = "말할 수 없는 비밀"
        mvo.description = "여기서 너에게까지 다섯 걸음."
        mvo.opendate = "2015-05-07"
        mvo.rating = 9.19
        // 배열에 추가
        self.list.append(mvo)
    }
}
