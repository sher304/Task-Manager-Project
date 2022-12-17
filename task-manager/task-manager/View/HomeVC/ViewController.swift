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
    
    private lazy var backgroundColorView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.layer.cornerRadius = 33
        return view
    }()
    
    private lazy var taskTableView: UITableView = {
        let table = UITableView()
        table.register(CustomTaskCell.self, forCellReuseIdentifier: CustomTaskCell.identifier)
        table.showsVerticalScrollIndicator = false
        table.delegate = self
        table.dataSource = self
        table.backgroundColor = backgroundColorView.backgroundColor
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
    }
    
    private func setupConstraints(){
        view.backgroundColor = .white
        
        view.addSubview(backgroundColorView)
        backgroundColorView.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview()
            make.height.equalTo(320)
        }
        
        backgroundColorView.addSubview(applicationTitle)
        applicationTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(backgroundColorView.safeAreaLayoutGuide.snp.top).offset(30)
        }
        
        view.addSubview(taskTableView)
        taskTableView.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.top.equalTo(applicationTitle.snp.bottom).offset(30)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CustomTaskCell()
        cell.layer.cornerRadius = 14
        cell.layer.masksToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
}
