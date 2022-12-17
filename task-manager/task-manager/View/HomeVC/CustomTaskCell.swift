//
//  CustomTaskCell.swift
//  task-manager
//
//  Created by Шермат Эшеров on 17/12/2022.
//

import Foundation
import UIKit
import SnapKit

class CustomTaskCell: UITableViewCell{

    static let identifier = "CustomCell"
    
    private lazy var bodyView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var iconImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .green
        image.layer.cornerRadius = 15
        image.layer.masksToBounds = true
        return image
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
    }
    
    private func setupConstraints(){
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))

        contentView.addSubview(bodyView)
        bodyView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        bodyView.addSubview(iconImage)
        iconImage.snp.makeConstraints { make in
            make.leading.equalTo(25)
            make.height.width.equalTo(30)
            make.centerY.equalToSuperview()
        }
    }
    
}
