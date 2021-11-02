//
//  HistoryRowView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment: .top){
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
            Text("Swift Pizza")
                .font(.title)
            Spacer()
        }.overlay(
            Image(systemName: "chevron.right.square")
                .padding()
                .foregroundColor(Color("G3"))
                .font(.title)
            , alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
