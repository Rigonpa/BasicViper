//
//  HomeRouter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

protocol HomeDelegate: class {
    func logoutButtonTapped()
    func catalogButtonTapped()
}

class HomeRouter {
    
    weak var delegate: HomeDelegate?
    
    static func createModule() -> CustomViewController {
        let presenter = HomePresenter()
        let router = HomeRouter()
        let viewController = HomeViewController()
        
        viewController.presenter = presenter
        viewController.presenter?.router = router
        viewController.presenter?.viewController = viewController
        
        return viewController
    }
}

extension HomeRouter: HomeProtocolPresenterToRouter {
    func logoutButtonTapped() {
        delegate?.logoutButtonTapped()
    }
    
    func catalogButtonTapped() {
        delegate?.catalogButtonTapped()
    }
}
