//
//  ViewController.swift
//  MyMovieChartWithCode
//
//  Created by 김광준 on 2020/04/16.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    // 테이블 뷰
    let movieChartTableView: UITableView = {
        var mainTableView: UITableView = UITableView()
        mainTableView.register(MovieTableViewCell.self, forCellReuseIdentifier: MovieTableViewCell.cellID)
        
//        mainTableView.backgroundColor = .cyan
        return mainTableView
    }()
    
    // 튜플 아이템으로 구성된 데이터 세트
    var dataset = [
        ("다크나이트", "히어로물에 철학에 음악까지 더해져 예술이 되다.", "2008-09-04", 8.95),
        ("호우시절", "때를 알고 내리는 좋은 비","2009-10-08", 7.31),
        ("말할 수 없는 비밀", "여기서 너에게까지 다섯 걸음.", "2015-05-07", 9.19),
    ]
    
    // 테이블 뷰를 구성할 리스트 데이터
    lazy var list: [MovieVO] = {
        var datalist: [MovieVO] = [MovieVO]()
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
        super.viewDidLoad()

        self.movieChartTableView.delegate = self
        self.movieChartTableView.dataSource = self
        setupMovieChartTableView()
    }
    
    private func setupMovieChartTableView() {
        let guide = self.view.safeAreaLayoutGuide
        
        self.view.addSubview(movieChartTableView)
        
        movieChartTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            movieChartTableView.topAnchor.constraint(equalTo: guide.topAnchor),
            movieChartTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            movieChartTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            movieChartTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }


}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 주어진 행에 맞는 데이터 소스를 읽어온다.
        let row = self.list[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.cellID, for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        
        cell.textLabel?.text = row.title
        cell.detailTextLabel?.text = row.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("선택된 행은 \(indexPath.row) 번째 행입니다.")
    }
    
}

