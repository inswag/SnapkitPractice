//
//  ViewController.swift
//  SnapKitPractice
//
//  Created by 박인수 on 03/11/2018.
//  Copyright © 2018 inswag. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    lazy var view1: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    lazy var label1: UILabel = {
        var label = UILabel()
        label.text = "왼쪽 정렬"
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var view2: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    lazy var label2: UILabel = {
        var label = UILabel()
        label.text = "가운데 정렬"
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var view3: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    lazy var label3: UILabel = {
        var label = UILabel()
        label.text = "오른쪽 정렬"
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var view4: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    
    lazy var view5: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    
    lazy var view6: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    
    lazy var view7: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    lazy var view8: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    lazy var view9: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    lazy var view10: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.magenta
        return view
    }()
    
    lazy var view11: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.magenta
        return view
    }()
    
    lazy var view12: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.magenta
        return view
    }()
    
    lazy var view13: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    
    lazy var view14: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    
    lazy var view15: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Set up View")
        setupView()
        print("Finish Set up View")
    }

    func setupView() {
        
        self.view.addSubview(view1)
        self.view1.addSubview(label1)
        
        self.view.addSubview(view2)
        self.view2.addSubview(label2)

        self.view.addSubview(view3)
        self.view3.addSubview(label3)

        self.view.addSubview(view4)
        self.view.addSubview(view5)
        self.view.addSubview(view6)
        self.view.addSubview(view7)
        self.view.addSubview(view8)
        self.view.addSubview(view9)
        self.view.addSubview(view10)
        self.view.addSubview(view11)
        self.view.addSubview(view12)
        self.view.addSubview(view13)
        self.view.addSubview(view14)
        self.view.addSubview(view15)
        
        self.view1.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalTo(self.view2.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view4.snp.top).offset(-10)
        }
        self.label1.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        self.view2.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100)
            make.leading.equalTo(self.view1.snp.trailing).offset(5)
            make.trailing.equalTo(self.view3.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view4.snp.top).offset(-10)
        }
        self.label2.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        self.view3.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100)
            make.leading.equalTo(self.view2.snp.trailing).offset(5)
            make.trailing.equalToSuperview().offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view4.snp.top).offset(-10)
        }
        self.label3.snp.makeConstraints { (make) in
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        self.view4.snp.makeConstraints { (make) in
            make.top.equalTo(self.view1.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalTo(self.view5.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view7.snp.top).offset(-10)
        }

        self.view5.snp.makeConstraints { (make) in
            make.top.equalTo(self.view1.snp.bottom).offset(10)
            make.leading.equalTo(self.view4.snp.trailing).offset(5)
            make.trailing.equalTo(self.view6.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view7.snp.top).offset(-10)
        }
        
        self.view6.snp.makeConstraints { (make) in
            make.top.equalTo(self.view1.snp.bottom).offset(10)
            make.leading.equalTo(self.view5.snp.trailing).offset(5)
            make.trailing.equalToSuperview().offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view7.snp.top).offset(-10)
        }
        
        self.view7.snp.makeConstraints { (make) in
            make.top.equalTo(self.view4.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalTo(self.view8.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view10.snp.top).offset(-10)
        }
        
        self.view8.snp.makeConstraints { (make) in
            make.top.equalTo(self.view4.snp.bottom).offset(10)
            make.leading.equalTo(self.view7.snp.trailing).offset(5)
            make.trailing.equalTo(self.view9.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view10.snp.top).offset(-10)
        }
        
        self.view9.snp.makeConstraints { (make) in
            make.top.equalTo(self.view4.snp.bottom).offset(10)
            make.leading.equalTo(self.view8.snp.trailing).offset(5)
            make.trailing.equalToSuperview().offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view10.snp.top).offset(-10)
        }
        
        self.view10.snp.makeConstraints { (make) in
            make.top.equalTo(self.view7.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalTo(self.view11.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view13.snp.top).offset(-10)
        }
        
        self.view11.snp.makeConstraints { (make) in
            make.top.equalTo(self.view7.snp.bottom).offset(10)
            make.leading.equalTo(self.view10.snp.trailing).offset(5)
            make.trailing.equalTo(self.view12.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view13.snp.top).offset(-10)
        }
        
        self.view12.snp.makeConstraints { (make) in
            make.top.equalTo(self.view7.snp.bottom).offset(10)
            make.leading.equalTo(self.view11.snp.trailing).offset(5)
            make.trailing.equalToSuperview().offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalTo(self.view13.snp.top).offset(-10)
        }
        
        self.view13.snp.makeConstraints { (make) in
            make.top.equalTo(self.view10.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalTo(self.view14.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalToSuperview().offset(-10)
        }
        
        self.view14.snp.makeConstraints { (make) in
            make.top.equalTo(self.view10.snp.bottom).offset(10)
            make.leading.equalTo(self.view13.snp.trailing).offset(5)
            make.trailing.equalTo(self.view15.snp.leading).offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalToSuperview().offset(-10)
        }
        
        self.view15.snp.makeConstraints { (make) in
            make.top.equalTo(self.view10.snp.bottom).offset(10)
            make.leading.equalTo(self.view14.snp.trailing).offset(5)
            make.trailing.equalToSuperview().offset(-5)
            make.height.equalTo(self.view1.snp.width)
            make.width.equalTo(self.view1.snp.height)
//            make.bottom.equalToSuperview().offset(-10)
        }
        
    }
    
    // MARK:- PUSH VC
    func pushNextVC() {
        
    }
    
}

