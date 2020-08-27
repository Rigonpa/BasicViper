//
//  MainFlow.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 27/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class MainFlow: FlowCoordinator {
    var name: String? = "MainFlow"
    var flowNavManager: UINavigationController?
    
    var photoFlow: PhotoFlow?
    
    func startFlow() -> UINavigationController? {
        guard let loginVC = LoginRouter.createModule() as? LoginViewController,
            let loginRouter = loginVC.presenter?.router as? LoginRouter else { return nil }
        
        loginRouter.delegate = self
        
        let mainNavManager = UINavigationController(rootViewController: loginVC)
        flowNavManager = mainNavManager
        return mainNavManager
    }
}

extension MainFlow: LoginDelegate {
    func homeButtonTapped() {
        guard let homeVC = HomeRouter.createModule() as? HomeViewController,
            let homeRouter = homeVC.presenter?.router as? HomeRouter else { return }
        
        homeRouter.delegate = self
        
        flowNavManager?.pushViewController(homeVC, animated: true)
    }
}

extension MainFlow: HomeDelegate {
    func logoutButtonTapped() {
        flowNavManager?.popViewController(animated: true)
    }
    
    func catalogButtonTapped() {
        guard let catalogVC = CatalogRouter.createModule() as? CatalogViewController,
            let catalogRouter = catalogVC.presenter?.router as? CatalogRouter else { return }
        
        catalogRouter.delegate = self
        
        flowNavManager?.pushViewController(catalogVC, animated: true)
    }
}

extension MainFlow: CatalogDelegate {
    func takePhotoButtonTapped() {
        photoFlow = PhotoFlow()
        guard let photoNavManager = photoFlow?.startFlow() else { return }
        flowNavManager?.present(photoNavManager, animated: true, completion: nil)
    }
    
    func loginButtonTapped() {
        flowNavManager?.popToRootViewController(animated: true)
    }
}
