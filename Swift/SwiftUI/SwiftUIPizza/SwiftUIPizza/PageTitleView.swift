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
        Text(title)
            .font(.largeTitle)
            .fontWeight(.light)
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza")
    }
}
