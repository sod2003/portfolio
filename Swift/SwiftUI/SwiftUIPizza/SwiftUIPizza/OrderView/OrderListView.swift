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
            List {
                Section(
                    header:ListHeaderView(orderModel: self.orderModel, text: "Your Order")
                ) {
                    ForEach(orderModel.orders){ item in
                        OrderRowView(orderItem: item)
                    }
                    .onDelete(perform: delete)
                }
            }
        }
    }
    func delete(at offsets:IndexSet){
        orderModel.orders.remove(atOffsets: offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


