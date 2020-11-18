//
//  DynamicCollectionView.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit

class DynamicCollectionView: UICollectionView {

    override func layoutSubviews() {
        super.layoutSubviews()
        if !__CGSizeEqualToSize(bounds.size, intrinsicContentSize) {
            invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return self.contentSize
    }
    
}
