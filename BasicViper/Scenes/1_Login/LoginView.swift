//
//  LoginView.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit
import SnapKit

class LoginView: CustomView {
    
    lazy var homeButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("  Home  ", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.layer.cornerRadius = 5.0
        btn.layer.borderWidth = 1.0
        btn.layer.borderColor = UIColor.black.cgColor
        btn.layer.masksToBounds = false
        return btn
    }()
    
    lazy var view = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        view.backgroundColor = .orange
        addSubview(view)
        view.snp.remakeConstraints { make in
            make.leading.equalTo(snp.leading)
            make.top.equalTo(snp.top)
            make.size.equalTo(snp.size)
        }
        
        view.addSubview(homeButton)
        homeButton.snp.remakeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.centerY.equalTo(snp.centerY)
        }
    }
}
