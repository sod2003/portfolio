//
//  OrderRowView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct OrderRowView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text("Your order item here")
                .font(.headline)
            Spacer()
            Text("$0.00")
                .bold()
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
            //.environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
