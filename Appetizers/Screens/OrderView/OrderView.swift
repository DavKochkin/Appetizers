//
//  OrderView.swift
//  Appetizers
//
//  Created by David Kochkin on 02.10.2023.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                        //                        .onDelete(perform: { indexSet in
                        //                            orderItems.remove(atOffsets: indexSet)
                        //                        })
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
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}

