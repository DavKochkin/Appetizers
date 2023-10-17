//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by David Kochkin on 17.10.2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
   @Published var firstName = ""
   @Published var lastName = ""
   @Published var email = ""
   @Published var birthday = Date()
   @Published var extraNapkins = false
   @Published var frequentRefills = false
}
