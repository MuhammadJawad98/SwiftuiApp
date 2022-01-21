//
//  CardView.swift
//  CardView
//
//  Created by Ali Raza on 11/01/2022.
//

import SwiftUI

struct CardView: View {
    var image:String
    var title:String
    var name:String
    var desc:String
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            AsyncImage(url: URL(string: image))
            //    Image(image)
//                .resizable()
//                .aspectRatio( contentMode: ContentMode.fit)
//                .padding(.bottom)
            HStack{
                VStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(name)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(desc)
                    .foregroundColor(.secondary)
                    .lineLimit(3).padding()
                    
                }
                Spacer()
                
            }
        }.cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray))
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
