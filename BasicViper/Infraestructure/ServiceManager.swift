//
//  ServiceManager.swift
//  BasicViper
//
//  Created by Ricardo González Pacheco on 26/08/2020.
//  Copyright © 2020 Ricardo González Pacheco. All rights reserved.
//

import Foundation

protocol ServiceManager {
    var name: String { get }
    func startup(completion: (ServiceManager?) -> Void)
}

extension ServiceManager {
    var debugDescription: String {
        return "name: \(name)"
    }
}
