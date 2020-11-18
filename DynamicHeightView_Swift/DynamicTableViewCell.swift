//
//  DynamicTableViewCell.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit

class DynamicTableViewCell: UITableViewCell {
    
    var dataArr = [String]() {
        didSet {
            dynamicView.dataArr = dataArr
            dynamicView.collectionView.reloadData()
            dynamicView.collectionView.layoutIfNeeded()
        }
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "城市"
        label.textAlignment = .left
        return label
    }()
    
    private lazy var dynamicView: DynamicView = {
        let view = DynamicView()
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initWithSubView()
        setSubViewConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: init and add subviews
extension DynamicTableViewCell {
    
    @objc private func initWithSubView() {
        contentView.backgroundColor = .red
        contentView.addSubview(titleLabel)
        contentView.addSubview(dynamicView)
    }
}

//MARK: set subviews constraint
extension DynamicTableViewCell {
    
    @objc private func setSubViewConstraint() {
        
        titleLabel.snp.makeConstraints { (make) in
            make.left.top.equalToSuperview().offset(20.0)
        }
        
        dynamicView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
        }
    }
}
