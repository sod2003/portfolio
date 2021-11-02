//
//  PageTitleView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct PageTitleView: View {
    var title:String
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: "chevron.up.square")
                .font(.title)
                .padding()
            , alignment: .leading
        )
        .background(Color("G1"))
        .foregroundColor(Color("G4"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza")
    }
}
