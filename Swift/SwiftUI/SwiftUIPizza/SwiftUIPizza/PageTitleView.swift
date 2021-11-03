//
//  PageTitleView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct PageTitleView: View {
    var title:String
    var isDisplayingOrders:Bool? = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: isDisplayingOrders ?? false ? "chevron.up.square" : "chevron.down.square")
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .font(.title)
                .padding()
            , alignment: .leading
        )
        .background(Color("G4"))
        .foregroundColor(Color("G1"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza")
    }
}
