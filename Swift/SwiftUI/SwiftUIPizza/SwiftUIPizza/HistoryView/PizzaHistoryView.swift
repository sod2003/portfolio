//
//  PizzaHistoryView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct PizzaHistoryView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "1_250w")
                .padding(5)
            HistoryListView()
        }
    }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            PizzaHistoryView()
            PizzaHistoryView()
                .preferredColorScheme(.dark)
                .background(Color.black)
        }
    }
}
