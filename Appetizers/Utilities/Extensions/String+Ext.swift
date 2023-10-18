//
//  String+Ext.swift
//  Appetizers
//
//  Created by David Kochkin on 18.10.2023.
//

import Foundation


extension String {
    
    var isValidEmail: Bool {
        let emailFormat    = "[A-Z0-9a-z._%+-]+@[A-Za-z0-0.-]+\\.[A-Z-a-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
