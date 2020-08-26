//
//  LoginRouter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class LoginRouter {
    
    static func createModule() -> CustomViewController {
        let presenter = LoginPresenter()
        let router = LoginRouter()
        let viewController = LoginViewController()
        
        presenter.router = router
        presenter.viewController = viewController
        viewController.presenter = presenter
        
        return viewController
    }
}

extension LoginRouter: LoginProtocolPresenterToRouter {
    func toYellowScreenAction() {
        let sceneDelegate: SceneDelegate? = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        guard let homeViewController = HomeRouter.createModule() as? HomeViewController, let mainNavManager = sceneDelegate?.window?.rootViewController as? UINavigationController else { return }
        
        mainNavManager.pushViewController(homeViewController, animated: true)
        
    }
}
