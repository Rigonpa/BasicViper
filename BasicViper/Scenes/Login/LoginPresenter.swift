//
//  LoginPresenter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

class LoginPresenter {
    
    weak var viewController: LoginProtocolPresenterToViewController?
    var router: LoginProtocolPresenterToRouter?
}

extension LoginPresenter: LoginProtocolViewControllerToPresenter {
    func toYellowScreenAction() {
        router?.toYellowScreenAction()
    }
}
