//
//  UserSingleton.swift
//  BasicSnapchatClone
//
//  Created by ILKER on 29.08.2022.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    
    private init() {
        
    }
    
    
}
