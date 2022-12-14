//
//  ViewController.swift
//  task-manager
//
//  Created by Шермат Эшеров on 14/12/2022.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private lazy var applicationTitle: UILabel = {
        let label = UILabel()
        label.text = "Task Manager"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        return label
    }()

    private lazy var taskTableView: UITableView = {
        let table = UITableView()
        table.delegate = self
        table.dataSource = self
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
    }

    private func setupConstraints(){
        view.backgroundColor = .white
        view.addSubview(applicationTitle)
        applicationTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(15)
        }
        
        view.addSubview(taskTableView)
        taskTableView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(applicationTitle.snp.bottom).offset(70)
        }
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
}
