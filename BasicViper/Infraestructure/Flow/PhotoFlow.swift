//
//  PhotoFlow.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 27/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class PhotoFlow: FlowCoordinator {
    var flowNavManager: UINavigationController?
    var name: String? = "PhotoFlow"
    
    var loginButtonTappedAction: (() -> Void)?
    
    func startFlow() -> UINavigationController? {
        guard let takePhotoVC = TakePhotoRouter.createModule() as? TakePhotoViewController,
            let takePhotoRouter = takePhotoVC.presenter?.router as? TakePhotoRouter else { return nil }
        
        takePhotoRouter.delegate = self
        
        let photoNavManager = UINavigationController(rootViewController: takePhotoVC)
        flowNavManager = photoNavManager
        return photoNavManager
    }
}

extension PhotoFlow: TakePhotoDelegate {
    func catalogButtonTapped() {
        guard let catalogVC = CatalogRouter.createModule() as? CatalogViewController, let catalogRouter = catalogVC.presenter?.router as? CatalogRouter else { return }

        catalogRouter.delegate = self
        flowNavManager?.pushViewController(catalogVC, animated: true)
    }
    
    func loginButtonTapped() {
        loginButtonTappedAction?()
    }
}

extension PhotoFlow: CatalogDelegate {
    func takePhotoButtonTapped() {
        // No event allowed
    }
}
