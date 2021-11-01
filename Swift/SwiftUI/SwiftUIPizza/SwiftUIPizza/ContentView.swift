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
            Text("Menu")
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack(alignment: .top, spacing: 15){
                    Image("1_100w")
                    VStack {
                        Text("Chicken Pizza")
                        HStack {
                            ForEach(0..<4) {item in
                                Image("Pizza Slice")
                            }
                        }
                    }
                    Spacer()
                }
            }
            Text("Your Order")
            List(0..<5){item in
                HStack(alignment: .firstTextBaseline){
                    Text("Your order item here")
                    Spacer()
                    Text("$0.00")
                }
                
            }
            
            Spacer()
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
