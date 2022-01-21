//
//  ContentView.swift
//  Shared
//
//  Created by Ali Raza on 11/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            ForEach(places, id:\.self){places in
                CardView(image: places.image, title: places.title, name: places.city, desc: places.desc)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
