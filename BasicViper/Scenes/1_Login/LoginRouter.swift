//
//  LoginRouter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

protocol LoginDelegate: class {
    func homeButtonTapped()
}

class LoginRouter {
    
    weak var delegate: LoginDelegate?
    
    static func createModule() -> CustomViewController {
        let presenter = LoginPresenter()
        let router = LoginRouter()
        let viewController = LoginViewController()
        
        viewController.presenter = presenter
        viewController.presenter?.router = router
        viewController.presenter?.viewController = viewController
        
        return viewController
    }
}

extension LoginRouter: LoginProtocolPresenterToRouter {
    func homeButtonTapped() {
        delegate?.homeButtonTapped()
    }
}
