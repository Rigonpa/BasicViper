//
//  LoginViewController.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class LoginViewController: CustomViewController {
    var presenter: LoginProtocolViewControllerToPresenter?
    
    var v: LoginView {
        get {
            guard let vi = view as? LoginView else {
                return LoginView()
            }
            return vi
        }
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = v
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        v.homeButton.addTarget(self, action: #selector(homeButtonTapped), for: .touchUpInside)
    }
    
    @objc private func homeButtonTapped() {
        presenter?.homeButtonTapped()
    }
}

extension LoginViewController: LoginProtocolPresenterToViewController {
    
}
