//
//  TakePhotoPresenter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

class TakePhotoPresenter {
    weak var viewController: TakePhotoProtocolPresenterToViewController?
    var router: TakePhotoProtocolPresenterToRouter?
}

extension TakePhotoPresenter: TakePhotoProtocolViewControllerToPresenter {
    func catalogButtonTapped() {
        router?.catalogButtonTapped()
    }
    
    func loginButtonTapped() {
        router?.loginButtonTapped()
    }
}
