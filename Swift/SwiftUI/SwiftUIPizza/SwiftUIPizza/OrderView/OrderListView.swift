//
//  OrderListView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        VStack {
            Text("Your Order")
            List(0..<5){item in
                OrderRowView()
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}


