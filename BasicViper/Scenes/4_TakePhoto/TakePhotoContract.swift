//
//  HomeContract.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

protocol TakePhotoProtocolViewControllerToPresenter: class {
    var viewController: TakePhotoProtocolPresenterToViewController? { get set }
    var router: TakePhotoProtocolPresenterToRouter? { get set }
    
    func loginButtonTapped()
    func catalogButtonTapped()
}

protocol TakePhotoProtocolPresenterToRouter: class {
    func loginButtonTapped()
    func catalogButtonTapped()
}

protocol TakePhotoProtocolPresenterToViewController: class {
    
}
