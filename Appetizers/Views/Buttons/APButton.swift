//
//  APButton.swift
//  Appetizers
//
//  Created by David Kochkin on 13.10.2023.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color(.brandPrimary))
            .clipShape(.buttonBorder)
    }
}

#Preview {
    APButton(title: "Test Title")
}
