//
//  NavigationManager.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class NavigationManager: ServiceManager {
    var name = "NavManager"
    var mainNavManager = UINavigationController()
    
    var mainFlowCoordinator: FlowCoordinator?
    var altFlowCoordinator: FlowCoordinator?
    
    var sceneDelegate: SceneDelegate? = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
    
    func startup(completion: (ServiceManager?) -> Void) {
        completion(self)
    }
    
    func startApp() {
        showLoginScreen()
    }
    
    private func showLoginScreen() {
        let mainFlow = MainFlow()
        guard let mainNavManager = mainFlow.startFlow() else { return }
        self.mainNavManager = mainNavManager
        mainFlowCoordinator = mainFlow
        
        mainFlow.takePhotoButtonTappedAction = {[weak self] in
            self?.showTakePhotoScreen()
        }
        
        sceneDelegate?.window?.rootViewController = mainNavManager
        sceneDelegate?.window?.makeKeyAndVisible()
    }
    
    private func showTakePhotoScreen() {
        let photoFlow = PhotoFlow()
        guard let photoNavManager = photoFlow.startFlow() else { return }
        altFlowCoordinator = photoFlow
        mainNavManager.present(photoNavManager, animated: true, completion: nil)
        
        photoFlow.loginButtonTappedActionTakePhoto = {[weak self] in
            self?.mainNavManager.popToRootViewController(animated: false)
            self?.mainNavManager.dismiss(animated: true, completion: nil)
        }
        
        photoFlow.loginButtonTappedActionCatalog = {[weak self] in
            self?.mainNavManager.popToRootViewController(animated: false)
            self?.mainNavManager.dismiss(animated: true, completion: nil)
        }
    }
}
