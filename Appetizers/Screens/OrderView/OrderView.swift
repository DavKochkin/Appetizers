//
//  OrderView.swift
//  Appetizers
//
//  Created by David Kochkin on 02.10.2023.
//

import SwiftUI

struct OrderView: View {
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    List {
                        ForEach(MockData.orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Save")
                    } label: {
                        APButton(title: "$15.99 - Place Order")
                    }
                    .padding(.bottom, 20)
                    
                }
                .navigationTitle("Order")
            }
        }
    }
}

#Preview {
    OrderView()
}

