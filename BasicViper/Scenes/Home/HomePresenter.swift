//
//  HomePresenter.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

class HomePresenter {
    weak var viewController: HomeProtocolPresenterToViewController?
    var router: HomeProtocolPresenterToRouter?
}

extension HomePresenter: HomeProtocolViewControllerToPresenter {
    func toOrangeScreenAction() {
        router?.toOrangeScreenAction()
    }
}
