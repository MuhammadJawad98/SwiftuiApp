//
//  CircularImage.swift
//  CardView
//
//  Created by Ali Raza on 20/01/2022.
//

import SwiftUI

struct CircularImage: View {
    var image: Image
      var borderColor: Color = .white
      var shadowRadius: CGFloat = 10
   
      var body: some View {
          image
              .clipShape(Circle())
              .overlay(Circle().stroke(borderColor, lineWidth: 4))
              .shadow(radius: shadowRadius)
      }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(image: Image("image1"))
    }
}
