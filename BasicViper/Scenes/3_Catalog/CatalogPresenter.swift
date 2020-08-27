//
//  HomePresenter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

class CatalogPresenter {
    weak var viewController: CatalogProtocolPresenterToViewController?
    var router: CatalogProtocolPresenterToRouter?
}

extension CatalogPresenter: CatalogProtocolViewControllerToPresenter {
    func takePhotoButtonTapped() {
        router?.takePhotoButtonTapped()
    }
    
    func loginButtonTapped() {
        router?.loginButtonTapped()
    }
}
