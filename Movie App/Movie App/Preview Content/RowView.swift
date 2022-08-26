//
//  RowView.swift
//  Movie App
//
//  Created by Max will on 8/24/22.
//

import SwiftUI

struct RowView: View {
    @State var movie: String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
                .clipShape(Circle())
            Text(movie)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(movie: "")
    }
}
