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
                VStack {
                    List {
                        orderViewList(image: "asian-flank-steak",
                                      name: "Asian Flank Steak",
                                      price: "$15.99")
                        orderViewList(image: "asian-flank-steak",
                                      name: "Asian Flank Steak",
                                      price: "$15.99")
                        orderViewList(image: "asian-flank-steak",
                                      name: "Asian Flank Steak",
                                      price: "$15.99")
                        
                    }
                    VStack {
                        Button {
                            print("Save")
                        } label: {
                            Text("$15.99 - Place Order")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(width: 350, height: 50)
                                .foregroundStyle(.white)
                                .background(Color(.brandPrimary))
                                .clipShape(.buttonBorder)
                        }
                        .padding(.bottom, 20)
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

struct orderViewList: View {
    
    let image: String
    let name: String
    let price: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.title3)
                Text(price)
            }
            .padding(.leading)
        }
    }
}
