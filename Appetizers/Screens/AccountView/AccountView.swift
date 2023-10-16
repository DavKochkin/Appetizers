//
//  AccountView.swift
//  Appetizers
//
//  Created by David Kochkin on 02.10.2023.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthday = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $birthday,
                               displayedComponents: .date)
                    
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                }
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
