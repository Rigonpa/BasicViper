//
//  HomeRouter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

protocol CatalogDelegate: class {
    func loginButtonTapped()
    func takePhotoButtonTapped()
}

class CatalogRouter {
    
    weak var delegate: CatalogDelegate?
    
    static func createModule() -> CustomViewController {
        let presenter = CatalogPresenter()
        let router = CatalogRouter()
        let viewController = CatalogViewController()
        
        viewController.presenter = presenter
        viewController.presenter?.router = router
        viewController.presenter?.viewController = viewController
        
        return viewController
    }
}

extension CatalogRouter: CatalogProtocolPresenterToRouter {
    func takePhotoButtonTapped() {
        delegate?.takePhotoButtonTapped()
    }
    
    func loginButtonTapped() {
        delegate?.loginButtonTapped()
    }
}
