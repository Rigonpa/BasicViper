//
//  TakePhotoViewController.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class TakePhotoViewController: CustomViewController {
    
    var presenter: TakePhotoProtocolViewControllerToPresenter?
    
    var v: TakePhotoView {
        get {
            guard let vi = view as? TakePhotoView else {
                return TakePhotoView()
            }
            return vi
        }
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = v
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Take photo"
        v.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        v.catalogButton.addTarget(self, action: #selector(catalogButtonTapped), for: .touchUpInside)
    }
    
    @objc private func loginButtonTapped() {
        presenter?.loginButtonTapped()
    }
    
    @objc private func catalogButtonTapped() {
        presenter?.catalogButtonTapped()
    }
}

extension TakePhotoViewController: TakePhotoProtocolPresenterToViewController {
    
}
