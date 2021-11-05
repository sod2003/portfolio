//
//  SwiftUIPizzaApp.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 10/28/21.
//

import SwiftUI

@main
struct SwiftUIPizzaApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView(orderModel: OrderModel())
//                .environmentObject(UserPreferences())
            RootTabView()
                .environmentObject(UserPreferences())
        }
    }
}
