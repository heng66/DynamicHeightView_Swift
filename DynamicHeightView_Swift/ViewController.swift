//
//  ViewController.swift
//  DynamicHeightView_Swift
//
//  Created by heng on 2020/11/14.
//

import UIKit

class ViewController: UIViewController {
    
    let dataArr =  [["北京","上海","广州","深圳","杭州","成都","天津"],["重庆","武汉","贵阳","郑州","济南","西安","合肥","南京","南宁","太原","昆明","福州"],["宁波","青岛","大连","珠海","厦门","上海","烟台"],["成都","德阳","绵阳","遂宁","广元","内江","简阳","泸州","达州","巴中","广安","双流","射阳","温江","都江堰","金牛","高新","绵竹","武侯","郫县","彭州","龙泉驿","崇州","新津","邛崃"],["金堂","金牛","内江","高新","合肥","合肥","合肥"],["合肥","合肥","合肥","昆明","昆明","昆明","昆明","昆明","昆明","昆明","昆明","昆明","昆明"],["珠海","珠海","珠海","珠海","珠海","珠海","珠海"],["绵阳","绵阳","绵阳","绵阳","绵阳","绵阳","绵阳"]]
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100.0
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
            tableView.estimatedSectionHeaderHeight = 0.0
            tableView.estimatedSectionFooterHeight = 0.0
        }
        tableView.register(DynamicTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(DynamicTableViewCell.self))
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "高度动态布局"
        initWithSubView()
        setSubViewConstraint()
        
        //延时 0.5s 执行
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now()+0.5) {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}

//MARK: init and add subviews
extension ViewController {
    
    @objc private func initWithSubView() {
        view.backgroundColor = .white
        view.addSubview(tableView)
    }
    
}

//MARK: set subviews constraint
extension ViewController {
    
    @objc private func setSubViewConstraint() {
        
        tableView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(SAFE_HEIGHT)
            make.left.right.bottom.equalToSuperview()
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(DynamicTableViewCell.self)) as! DynamicTableViewCell
        cell.dataArr = dataArr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.rowHeight
    }
        
}
