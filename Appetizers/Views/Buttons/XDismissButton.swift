//
//  XDismissButton.swift
//  Appetizers
//
//  Created by David Kochkin on 14.10.2023.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    XDismissButton()
}
