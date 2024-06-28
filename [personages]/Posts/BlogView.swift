//
//  BlogView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

struct BlogView: View {
    let posts: [PostModel]
    
    var body: some View {
        Text("[Our news]")
            .font(.title)
            .bold()
            .padding(.leading, -170.0)
            .foregroundStyle(.accent)
            
        List {
            ForEach(posts) { post in
                VStack {
                    Spacer().frame(height: 10)
                    BlogPostView(post: post)
                }
            }
        }
    }
}

#Preview {
    BlogView(posts: UserPostData.posts())
}
