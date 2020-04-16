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
    // 튜플 아이템으로 구성된 데이터 세트
    var dataset = [
        ("다크나이트", "히어로물에 철학에 음악까지 더해져 예술이 되다.", "2008-09-04", 8.95),
        ("호우시절", "때를 알고 내리는 좋은 비","2009-10-08", 7.31),
        ("말할 수 없는 비밀", "여기서 너에게까지 다섯 걸음.", "2015-05-07", 9.19),
    ]
    
    // 테이블 뷰를 구성할 리스트 데이터
    lazy var list: [MovieVO] = {
        var datalist = [MovieVO]()
        for (title, desc, opendate, rating) in self.dataset {
            let mvo = MovieVO()
            mvo.title = title
            mvo.description = desc
            mvo.opendate = opendate
            mvo.rating = rating
            
            datalist.append(mvo)
        }
        return datalist
    }()
    
    override func viewDidLoad() {
//        self.tableView.delegate = self
//        self.tableView.dataSource = self
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 주어진 행에 맞는 데이터 소스를 읽어온다.
        let row = self.list[indexPath.row]

        // 테이블 셀 객체를 직접 생성하는 대신 큐로부터 가져옴.
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell")!
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as? UITableViewCell else {
//            return UITableViewCell()
//        }
        cell.textLabel?.text = row.title
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다.")
    }
}
