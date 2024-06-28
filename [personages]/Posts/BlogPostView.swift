//
//  BlogPostView.swift
//  [personages]
//
//  Created by Карина Дьячина on 21.06.24.
//

import Foundation
import SwiftUI

struct BlogPostView: View {
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
                    Text(post.title).font(.headline)
                    Text(post.text).font(.body).lineLimit(nil)
                }
                .padding(.leading, 15)
                .padding(.trailing, 15)
                
                Image(post.image)
                    .resizable()
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
}

#Preview {
    BlogPostView(post: UserPostData.posts()[0])
}
