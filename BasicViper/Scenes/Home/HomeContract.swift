//
//  HomeContract.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

protocol HomeProtocolViewControllerToPresenter: class {
//    var viewController: HomeProtocolPresenterToViewController? { get set }
//    var router: HomeProtocolPresenterToRouter? { get set }
    
    func toOrangeScreenAction()
}

protocol HomeProtocolPresenterToRouter: class {
    func toOrangeScreenAction()
}

protocol HomeProtocolPresenterToViewController: class {
    
}
