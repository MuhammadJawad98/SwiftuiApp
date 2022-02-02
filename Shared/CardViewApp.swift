//
//  CardViewApp.swift
//  Shared
//
//  Created by Ali Raza on 11/01/2022.
//

import SwiftUI

@main
struct CardViewApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            PostsView()
//            ListView()
            NavigationView {
                       VStack {
                           Text("Hello World")
                           //for naviagting between screens
                           NavigationLink(destination: ListView()) {
                               Text("Do Something")
                           }
                       }
                   }
        }
    }
}
