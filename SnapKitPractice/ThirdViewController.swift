//
//  ThirdViewController.swift
//  SnapKitPractice
//
//  Created by 박인수 on 04/11/2018.
//  Copyright © 2018 inswag. All rights reserved.
//

import Foundation
import UIKit

import SnapKit

class ThirdViewController: UIViewController {
    
    // MARK:- Property
    // Title
    lazy var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "타이틀 뷰 입니다."
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.gray
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    // Green Color View & Logo Image View
    lazy var firstView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()
    
    lazy var logoImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.backgroundColor = UIColor.blue
        return imageView
    }()
    
    
    // Account Label & TextField
    lazy var accountLabel: UILabel = {
        var label = UILabel()
        label.text = "Account"
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.magenta
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    lazy var accountTextfield: UITextField = {
        var textfield = UITextField()
        textfield.placeholder = "계정을 입력해 주세요"
        textfield.backgroundColor = UIColor.magenta
        return textfield
    }()
    
    // Password Label & Textfield
    lazy var passwordLabel: UILabel = {
        var label = UILabel()
        label.text = "Password"
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.cyan
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    lazy var passwordTextfield: UITextField = {
        var textfield = UITextField()
        textfield.placeholder = "비밀번호를 입력해 주세요"
        textfield.backgroundColor = UIColor.cyan
        return textfield
    }()
    
    // Find your password Button
    lazy var findPWBtn: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor.red
//        button.titleLabel!.font = UIFont(name: "비밀번호를 잊어버리셨나요?", size: 15)
//        button.titleLabel!.text =
        return button
    }()
    
    // Sign In & Sign Up Button
    lazy var clearLeftView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    lazy var clearRightView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    lazy var signInBtn: UIButton = {
        var button = UIButton()
        button.setTitle("로그인 하기", for: .normal)
        button.backgroundColor = UIColor.black
        return button
    }()
    
    lazy var signUpBtn: UIButton = {
        var button = UIButton()
        button.setTitle("회원가입하기", for: .normal)
        button.backgroundColor = UIColor.black
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK:- Set up View
    func setupView() {
        
        self.view.addSubview(titleLabel)
        
        self.view.addSubview(firstView)
        self.firstView.addSubview(logoImageView)
        
        self.view.addSubview(accountLabel)
        self.view.addSubview(accountTextfield)
        
        self.view.addSubview(passwordLabel)
        self.view.addSubview(passwordTextfield)
        
        self.view.addSubview(findPWBtn)
        
        self.view.addSubview(clearLeftView)
        self.view.addSubview(clearRightView)
        self.clearLeftView.addSubview(signInBtn)
        self.clearRightView.addSubview(signUpBtn)
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        
        
        firstView.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLabel.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        logoImageView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.bottom.equalToSuperview().offset(-10)
            make.width.equalTo(80)
            make.height.equalTo(80)
        }
        
        
        accountLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstView.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalTo(50)
        }
        accountTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.firstView.snp.bottom)
            make.leading.equalTo(self.accountLabel.snp.trailing)
            make.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        
        
        passwordLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.accountLabel.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(3)
            make.height.equalTo(50)
        }
        passwordTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.accountLabel.snp.bottom)
            make.leading.equalTo(self.accountLabel.snp.trailing)
            make.trailing.equalToSuperview()
            make.height.equalTo(50)
        }
        
        
        findPWBtn.snp.makeConstraints { (make) in
            make.top.equalTo(self.passwordLabel.snp.bottom)
            make.trailing.equalToSuperview().offset(-20)
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalTo(50)
        }
        
        
        clearLeftView.snp.makeConstraints { (make) in
            make.top.equalTo(self.findPWBtn.snp.bottom)
            make.leading.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
            make.bottom.equalToSuperview()
        }
        clearRightView.snp.makeConstraints { (make) in
            make.top.equalTo(self.findPWBtn.snp.bottom)
            make.trailing.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
            make.bottom.equalToSuperview()
        }
        signInBtn.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(70)
            make.trailing.equalToSuperview().offset(-15)
            make.height.equalTo(70)
        }
        signUpBtn.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.trailing.equalTo(-70)
            make.leading.equalToSuperview().offset(15)
            make.height.equalTo(70)
        }
    }
    
    
}
