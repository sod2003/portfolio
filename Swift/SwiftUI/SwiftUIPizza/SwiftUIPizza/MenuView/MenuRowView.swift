//
//  MenuRowView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15){
            Image("1_100w")
            VStack(alignment: .leading) {
                Text("Chicken Pizza")
                    .font(.title)
                    .fontWeight(.light)
                RatingsView()
            }
            //Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
    }
}


