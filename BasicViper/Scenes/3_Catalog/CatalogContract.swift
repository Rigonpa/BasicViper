//
//  HomeContract.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

protocol CatalogProtocolViewControllerToPresenter: class {
    var viewController: CatalogProtocolPresenterToViewController? { get set }
    var router: CatalogProtocolPresenterToRouter? { get set }
    
    func loginButtonTapped()
    func takePhotoButtonTapped()
}

protocol CatalogProtocolPresenterToRouter: class {
    func loginButtonTapped()
    func takePhotoButtonTapped()
}

protocol CatalogProtocolPresenterToViewController: class {
    
}
