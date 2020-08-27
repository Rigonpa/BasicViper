//
//  FlowCoordinator.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 27/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

protocol FlowCoordinator {
    var flowNavManager: UINavigationController? { get set }
//    var currentController: CustomViewController? { get set }
    var name: String? { get }
    
    func startFlow() -> UINavigationController?
}
