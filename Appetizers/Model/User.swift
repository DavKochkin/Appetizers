//
//  User.swift
//  Appetizers
//
//  Created by David Kochkin on 18.10.2023.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var email           = ""
    var lastName        = ""
    var birthday        = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
