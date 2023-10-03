//
//  AppetizerListView .swift
//  Appetizers
//
//  Created by David Kochkin on 02.10.2023.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
            .listStyle(InsetListStyle())
        }
    }
}

#Preview {
    AppetizerListView()
}
