//
//  HomeRouter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class HomeRouter {
    
    static func createModule() -> CustomViewController {
        let presenter = HomePresenter()
        let router = HomeRouter()
        let viewController = HomeViewController()
        
        presenter.router = router
        presenter.viewController = viewController
        viewController.presenter = presenter
        
        return viewController
    }
}

extension HomeRouter: HomeProtocolPresenterToRouter {
    func toOrangeScreenAction() {
        let sceneDelegate: SceneDelegate? = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        guard let mainNavManager = sceneDelegate?.window?.rootViewController as? UINavigationController else { return }
        
        mainNavManager.popViewController(animated: true)
    }
}
