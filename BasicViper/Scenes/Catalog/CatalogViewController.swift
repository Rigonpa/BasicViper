//
//  HomeViewController.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class CatalogViewController: CustomViewController {
    
    var presenter: CatalogProtocolViewControllerToPresenter?
    
    var v: CatalogView {
        get {
            guard let vi = view as? CatalogView else {
                return CatalogView()
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
        title = "Catalog"
        v.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc private func loginButtonTapped() {
        presenter?.loginButtonTapped()
    }
}

extension CatalogViewController: CatalogProtocolPresenterToViewController {
    
}
