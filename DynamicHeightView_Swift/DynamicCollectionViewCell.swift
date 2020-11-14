//
//  DynamicCollectionViewCell.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit
import SnapKit

class DynamicCollectionViewCell: UICollectionViewCell {
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        label.sizeToFit()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initWithSubView()
        setSubViewConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: init and add subviews
extension DynamicCollectionViewCell {
    
    @objc private func initWithSubView() {
        contentView.addSubview(titleLabel)
    }
    
}

//MARK: set subviews constraint
extension DynamicCollectionViewCell {
    
    @objc private func setSubViewConstraint() {
        titleLabel.snp.makeConstraints { (make) in
            make.top.left.bottom.right.equalToSuperview()
        }
    }
    
}
