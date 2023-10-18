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
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContex.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContex.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("Changes have been saved successfully")
    }
}
