//
//  Manager.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

struct Manager {
    
    static let navigation: NavigationManager = {
        let navigation = NavigationManager()
        return navigation
    }()
    
    static func startUpManagers(completion: ((Bool) -> Void)) {
        
        navigation.startup { apiNavigation in
            if apiNavigation == nil {
                completion(false)
                return
            }
            completion(true)
        }
        
    }
}
