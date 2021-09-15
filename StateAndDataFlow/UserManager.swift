//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 13.09.2021.
//

import Combine
import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("isRegister") var isRegister = false
    @AppStorage("name") var name = ""
    
    public func logOut() {
        isRegister = false
        name = ""
        
        if let bundleID = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: bundleID)
        }
        
    }
}
