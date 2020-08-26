//
//  LoginContract.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

protocol LoginProtocolViewControllerToPresenter: class {
//    var viewController: LoginProtocolPresenterToViewController? { get set }
//    var router: LoginProtocolPresenterToRouter? { get set }
    
    func toYellowScreenAction()
}

protocol LoginProtocolPresenterToRouter: class {
    func toYellowScreenAction()
}

protocol LoginProtocolPresenterToViewController: class {
    
}
