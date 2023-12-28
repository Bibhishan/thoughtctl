//
//  SingleRow.swift
//  SwiftUIGrids
//
//  Created by Alfian Losari on 26/07/20.
//

import SwiftUI
import Kingfisher

struct SingleRow: View {
    
    let title: String
    let date: String
    let postImage: String
    
    var body: some View {
        HStack {
            KFImage(URL(string: postImage)!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(3)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                Text(date)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
    
}

struct SingleRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleRow(title: "image", date: "title", postImage: "date")
    }
}
