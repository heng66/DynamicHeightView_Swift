//
//  DynamicView.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit

class DynamicView: UIView {
    
    var dataArr: [String] = []
    
    public lazy var collectionView: DynamicCollectionView = {
        var layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 15.0
        layout.minimumInteritemSpacing = 15.0
        layout.itemSize = CGSize(width: 60.0, height: 60.0)
        layout.sectionInset = UIEdgeInsets(top: 15.0, left: 15.0, bottom: 15.0, right: 15.0)
        layout.scrollDirection = .vertical
        
        let collectionView = DynamicCollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .blue
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(DynamicCollectionViewCell.self, forCellWithReuseIdentifier: NSStringFromClass(DynamicCollectionViewCell.self))
        if #available(iOS 11.0, *) {
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        return collectionView
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
extension DynamicView {
    
    @objc private func initWithSubView() {
        backgroundColor = .white
        addSubview(collectionView)
    }
}

//MARK: set subviews constraint
extension DynamicView {
    
    @objc private func setSubViewConstraint() {
        
        collectionView.snp.makeConstraints { (make) in
            make.left.right.bottom.top.equalToSuperview()
        }
    }
}

//MARK: delegate and datasource
extension DynamicView: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(DynamicCollectionViewCell.self), for: indexPath) as! DynamicCollectionViewCell
        cell.title = dataArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArr.count
    }
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("点击了\(indexPath.section) -- > \(indexPath.row)")
    }
        
}

