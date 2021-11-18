//
//  PageTitleView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

let staticFont = Font.system(size: 22)

struct PageTitleView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    var title:String
    var isDisplayingOrders:Bool? = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(sizeClass != .compact ? .largeTitle : staticFont)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5), value: isDisplayingOrders)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .font(sizeClass != .compact ? .title : staticFont)
                .padding()
            , alignment: .leading
        )
        .background(Color("G4"))
        .foregroundColor(Color("G1"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza", isDisplayingOrders: true)
.previewInterfaceOrientation(.portrait)
    }
}
