//
//  TableViewBasic.swift
//  TableView-Study
//
//  Created by 김광준 on 05/07/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class TableViewBasic: UIViewController {
    
    override var description: String {
        // 테이블 뷰 Title
        return "Tabel View - Basic"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let tableView = UITableView(frame: view.frame)
        tableView.dataSource = self
        view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellId")
    }
}

extension TableViewBasic: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 다루어야 할 데이터의 갯수 -> numberOfRowsInSection
        // 하나의 색션에 몇개의 행을 구성 할 것인가에 대한 것
        
        return 1000
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // indexPath => 색션과 로우를 나타내는 데이터라고 생각하면 됨
        
        /* 기본 셀 생성
        let cell = UITableViewCell(
            style: .default,
            reuseIdentifier: "CellId"
        )
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
 */
    
    // 기본 셀 생성으로 셀이 굉장히 많이 생성시 (10만개 처럼 굉장히 많을 때) -> 메모리가 너무 많이 사용 됨
    // 메모리의 효율성과 적게 사용하기 위해서 -> 셀의 재사용이 필요하다
    
    // 셀의 재사용 코드
        let cell: UITableViewCell
        // 테이블 셀의 id 가 CellId인 셀을 reuse 할 수 있도록 할 것이고 재사용 할 수 있는 셀이 없을 경우
        // 새로운 셀을 만들것이다 라는 코드
        if let reusableCell = tableView.dequeueReusableCell(withIdentifier: "CellId") {
            cell = reusableCell
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "CellId")
        }
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
