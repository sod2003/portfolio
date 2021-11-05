//
//  RootTabView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/5/21.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView(orderModel: OrderModel())
                .tabItem{
                    Image(systemName: "cart")
                    Text("Order")
                }
            PizzaHistoryView()
                .tabItem{
                    Image(systemName: "book")
                    Text("History")
                }
        }
            .tint(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(UserPreferences())
    }
}
