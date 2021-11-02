//
//  SelectedImageView.swift
//  SwiftUIPizza
//
//  Created by Sean O'Dowd on 11/2/21.
//

import SwiftUI

struct SelectedImageView: View {
    var image:String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: .black, radius: 10, x: 5, y: 5)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image: "1_250w")
    }
}
