//
//  OrderView.swift
//  Appetizers
//
//  Created by David Kochkin on 02.10.2023.
//

import SwiftUI

struct OrderView: View {
    
   @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    HStack {
                        Image("asian-flank-steak")
                            .resizable()
                            .frame(width: 80, height: 80)
                        VStack {
                            Text("Asian Flank Steak")
                                .font(.title3)
                            Text("Price")
                        }
                    }
                }
                .navigationTitle("Order")
                .listStyle(PlainListStyle())
            }
        }
    }
}

#Preview {
    OrderView()
}
