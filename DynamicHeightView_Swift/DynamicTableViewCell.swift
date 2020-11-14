//
//  DynamicTableViewCell.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit

class DynamicTableViewCell: UITableViewCell {
    
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
        
    }
    
}

//MARK: set subviews constraint
extension DynamicTableViewCell {
    
    @objc private func setSubViewConstraint() {
        
    }
    
}
