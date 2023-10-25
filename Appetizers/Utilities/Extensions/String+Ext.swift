//
//  String+Ext.swift
//  Appetizers
//
//  Created by David Kochkin on 18.10.2023.
//

import Foundation
import RegexBuilder


extension String {
    
    var isValidEmail: Bool {
//        let emailFormat    = /[A-Z0-9a-z._%+-]+@[A-Za-z0-0.-]+\\.[A-Z-a-z]{2,64}/
//        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
//        return emailPredicate.evaluate(with: self)
        
        let emailRegex = Regex {
            OneOrMore {
                CharacterClass(
                    .anyOf("._%+-"),
                    ("A"..."Z"),
                    ("0"..."9"),
                    ("a"..."z")
                )
            }
            "@"
            OneOrMore {
                CharacterClass(
                    .anyOf("-"),
                    ("A"..."Z"),
                    ("a"..."z"),
                    ("0"..."0")
                )
            }
            "."
            Repeat(2...64) {
                CharacterClass(
                    .anyOf("-"),
                    ("A"..."Z"),
                    ("a"..."z")
                )
            }
        }
        return self.wholeMatch(of: emailRegex) != nil
    }
}
