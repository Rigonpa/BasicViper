//
//  HomeViewController.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import UIKit

class HomeViewController: CustomViewController {
    
    var presenter: HomeProtocolViewControllerToPresenter?
    
    var v: HomeView {
        get {
            guard let vi = view as? HomeView else {
                return HomeView()
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
        title = "Home"
        v.catalogButton.addTarget(self, action: #selector(catalogButtonTapped), for: .touchUpInside)
        v.logoutButton.addTarget(self, action: #selector(logoutButtonTapped), for: .touchUpInside)
    }
    
    @objc private func catalogButtonTapped() {
        presenter?.catalogButtonTapped()
    }
    
    @objc private func logoutButtonTapped() {
        presenter?.logoutButtonTapped()
    }
}

extension HomeViewController: HomeProtocolPresenterToViewController {
    
}
