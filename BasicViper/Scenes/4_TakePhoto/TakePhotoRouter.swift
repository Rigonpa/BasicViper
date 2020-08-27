//
//  TakePhotoRouter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

protocol TakePhotoDelegate: class {
    func loginButtonTappedTakePhoto()
    func catalogButtonTapped()
}

class TakePhotoRouter {
    
    weak var delegate: TakePhotoDelegate?
    
    static func createModule() -> CustomViewController {
        let presenter = TakePhotoPresenter()
        let router = TakePhotoRouter()
        let viewController = TakePhotoViewController()
        
        viewController.presenter = presenter
        viewController.presenter?.router = router
        viewController.presenter?.viewController = viewController
        
        return viewController
    }
}

extension TakePhotoRouter: TakePhotoProtocolPresenterToRouter {
    func catalogButtonTapped() {
        delegate?.catalogButtonTapped()
    }
    
    func loginButtonTapped() {
        delegate?.loginButtonTappedTakePhoto()
    }
}
