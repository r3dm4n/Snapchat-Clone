//
//  User.swift
//  Snapchat-Clone
//
//  Created by r3d on 09/06/2017.
//  Copyright © 2017 Alexandru Corut. All rights reserved.
//

import UIKit

struct User {
    private var _firstName: String
    private var _uid: String
    
    var uid: String {
        return _uid
    }
    
    var firstName: String {
        return _firstName
    }
    
    init(uid: String, firstName: String) {
        _uid = uid
        _firstName = firstName
    }
}
