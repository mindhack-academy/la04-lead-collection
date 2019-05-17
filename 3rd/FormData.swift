//
//  FormData.swift
//  3rd
//
//  Created by Lavinia on 17/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation

class FormData  {
    var user: User?
    
    var technology: Int?
    
    var reason: String?
    
    var contactDate: Date?
}

class User {
    var firstName: String?
    var lastName: String?
    var email: String?
    var phone: String?
}
