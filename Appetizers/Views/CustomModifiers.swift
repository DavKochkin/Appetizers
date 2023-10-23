//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by David Kochkin on 23.10.2023.
//

import SwiftUI

struct StandartButtonSttyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
