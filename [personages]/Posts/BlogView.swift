//
//  BlogView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

//struct BlogView: View {
//    @State
//    var post: PostModel
//    
//    var body: some View {
//        HStack {
//            ImageView(imageUrl: post.image)
//            Spacer()
//            VStack {
//                Text(post.title)
//                    .font(.subheadline)
//                    .fontWeight(.bold)
//                Text(post.text)
//                    .font(.caption)
//                    .lineLimit(3)
//                
//            }
//            Spacer()
//        }.padding(.vertical)
//    }
//}

struct BlogView: View {
    let post: PostModel
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading) {
                    HStack(spacing: 10) {
                        AvatarView(image: post.user.avatar, size: 70)
                        VStack(alignment: .leading, spacing: 3) {
                            Text(post.user.name).font(.headline)
                            Text(post.time).font(.subheadline)
                        }
                    }
                    Text(post.text).font(.body).lineLimit(nil)
                }
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
                Image(post.image)
                    .resizable()
                    .aspectRatio(3/2, contentMode: .fit)
            }
            .padding(.top, 5)
        }
    }
}

#Preview {
    BlogView(post: UserPostData.posts()[1])
}
