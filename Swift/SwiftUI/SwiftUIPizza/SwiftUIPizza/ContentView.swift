//
//  ContentView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 10/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("SwiftUI Pizza Company")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Image("monkey_base")
                .resizable()
                .scaledToFit()
            Text("Order pizza")
                .font(.largeTitle)
            Spacer()
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
