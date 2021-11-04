//
//  PizzaHistoryView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct PizzaHistoryView: View {
    @State var imageID: Int = 0
    var body: some View {
        VStack {
            //ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "\(imageID)_250w")
                .padding(5)
            HistoryListView(imageID: $imageID)
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
