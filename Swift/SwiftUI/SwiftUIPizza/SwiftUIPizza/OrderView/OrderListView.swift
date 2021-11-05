//
//  OrderListView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct OrderListView: View {
    @ObservedObject var orderModel:OrderModel
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, text: "Your Order")
            List(orderModel.orders){item in
                OrderRowView(orderItem: item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


