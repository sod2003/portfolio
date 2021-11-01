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
            ZStack{
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                Text("SwiftUI Pizza Company")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            
            
            Text("Order pizza")
                .font(.largeTitle)
            Spacer()
            HStack(alignment: .top, spacing: 15) {
                Image("1_100w")
                Text("Chicken Pizza")
                Spacer()
            }
            Text("Your Order")
            HStack(alignment: .firstTextBaseline){
                Text("Your order item here")
                Spacer()
                Text("$0.00")
            }
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPad Pro (9.7-inch)")
            }
    }
}
