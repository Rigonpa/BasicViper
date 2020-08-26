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
        v.toOrangeButton.addTarget(self, action: #selector(toOrangeScreenAction), for: .touchUpInside)
    }
    
    @objc private func toOrangeScreenAction() {
        presenter?.toOrangeScreenAction()
    }
}

extension HomeViewController: HomeProtocolPresenterToViewController {
    
}
