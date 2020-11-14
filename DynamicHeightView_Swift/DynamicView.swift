//
//  DynamicView.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit

//class DynamicView: UIView {
//
//    private lazy var collectionView: DynamicCollectionView = {
//        var layout = UICollectionViewFlowLayout()
//        layout.minimumLineSpacing = 15
//        layout.minimumInteritemSpacing = 12
//        layout.scrollDirection = .vertical
//
//        let collectionView = DynamicCollectionView(frame: .zero, collectionViewLayout: layout)
//        collectionView.backgroundColor = .white
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        collectionView.showsHorizontalScrollIndicator = false
//        collectionView.showsVerticalScrollIndicator = false
//        collectionView.register(DynamicCollectionViewCell.self, forCellWithReuseIdentifier: "STChargeManageStatusCell")
//        if #available(iOS 11.0, *) {
//            collectionView.contentInsetAdjustmentBehavior = .never
//        }
//        return collectionView
//    }()
//
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        initWithSubView()
//        setSubViewConstraint()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}
//
////MARK: init and add subviews
//extension DynamicView {
//
//    @objc private func initWithSubView() {
//
//    }
//
//}
//
////MARK: set subviews constraint
//extension DynamicView {
//
//    @objc private func setSubViewConstraint() {
//
//    }
//}
//
////MARK: delegate and datasource
//extension DynamicView: UICollectionViewDelegate, UICollectionViewDataSource {
//
//
//}

