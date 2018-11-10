//
//  SecondViewController.swift
//  SnapKitPractice
//
//  Created by 박인수 on 04/11/2018.
//  Copyright © 2018 inswag. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    // First Line
    lazy var mainTitleView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    
    lazy var leftBtnInMainTV: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.blue
        button.setTitle("44", for: .normal)
        return button
    }()
    
    lazy var rightBtnInMainTV: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.blue
        button.setTitle("버튼", for: .normal)
        return button
    }()
    
    // Second Line
    lazy var firstSubview: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    lazy var secondSubview: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    
    // Third Line
    lazy var thirdLineMainView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    
    lazy var thirdLineBaseView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    
    lazy var thirdLineFirstSubViewInBaseV: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    // Fourth Line
    lazy var FourthLineMainView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    lazy var topLabel: UILabel = {
        var label = UILabel()
        label.text = "세개의 라벨은 같은 높이를 갖고 회전이 되었을 때엔"
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    lazy var middleLabel: UILabel = {
        var label = UILabel()
        label.text = "남은 흰색 뷰 크기만을 사용하여 보여준다"
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    lazy var bottomLabel: UILabel = {
        var label = UILabel()
        label.text = "무슨말이지.."
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    
    // Last Line
    lazy var lastLineMainView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainSetup()
    }
    
    func mainSetup() {
        
        self.view.addSubview(mainTitleView)
        self.mainTitleView.addSubview(leftBtnInMainTV)
        self.mainTitleView.addSubview(rightBtnInMainTV)
        
        self.view.addSubview(firstSubview)
        self.view.addSubview(secondSubview)
        
        self.view.addSubview(thirdLineMainView)
        self.thirdLineMainView.addSubview(thirdLineBaseView)
        self.thirdLineBaseView.addSubview(thirdLineFirstSubViewInBaseV)
        
        self.view.addSubview(FourthLineMainView)
        self.FourthLineMainView.addSubview(topLabel)
        self.FourthLineMainView.addSubview(middleLabel)
        self.FourthLineMainView.addSubview(bottomLabel)
        
        self.view.addSubview(lastLineMainView)
        
        
        topLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(3)
        }
        
        middleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.topLabel.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(3)
            make.bottom.equalTo(self.bottomLabel.snp.top)
        }
        
        bottomLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.middleLabel.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview().dividedBy(3)
            make.bottom.equalToSuperview()
        }
        
        // Auto Layout of First Line
        mainTitleView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(44)
        }
        leftBtnInMainTV.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.width.equalTo(self.mainTitleView.snp.height)
            make.height.equalTo(self.mainTitleView.snp.height)
        }
        rightBtnInMainTV.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.width.equalTo(self.mainTitleView.snp.height)
            make.height.equalTo(self.mainTitleView.snp.height)
        }
        
        // Auto Layout of Second Line
        firstSubview.snp.makeConstraints { (make) in
            make.top.equalTo(self.mainTitleView.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalTo(100)
        }
        secondSubview.snp.makeConstraints { (make) in
            make.top.equalTo(self.mainTitleView.snp.bottom)
            make.trailing.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalTo(100)
        }
        
        // Auto Layout of Third Line
        thirdLineMainView.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstSubview.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(44)
        }
        thirdLineBaseView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalTo(44)
        }
        
        thirdLineFirstSubViewInBaseV.snp.makeConstraints { (make) in
            make.top.equalTo(10)
            make.leading.equalTo(22)
            make.trailing.equalToSuperview()
            make.bottom.equalTo(-10)
        }
        
        // Auto Layout of Fourth Line
        FourthLineMainView.snp.makeConstraints { (make) in
            make.top.equalTo(self.thirdLineMainView.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(self.lastLineMainView.snp.top)
        }
        
        // Auto Layout of Last Line
        lastLineMainView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-44)
            make.height.equalTo(60)
        }
    }
    
}
