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
    
    func startup(completion: (ServiceManager?) -> Void) {
        completion(self)
    }
}
