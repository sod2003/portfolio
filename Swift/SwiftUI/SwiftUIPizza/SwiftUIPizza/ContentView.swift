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
            Image("monkey_base")
            Text("Order pizza")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
