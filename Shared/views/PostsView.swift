//
//  PostsView.swift
//  CardView (iOS)
//
//  Created by Ali Raza on 21/01/2022.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        ScrollView{
            ForEach(postList, id:\.self){postList in
                PostUi(userImage: postList.userImage, userName: postList.userName, date: postList.date, image: postList.image, text: postList.text)
            }
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
