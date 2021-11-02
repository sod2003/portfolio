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
            Text("Swift Pizza")
        }
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
