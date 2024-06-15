//
//  ContentView.swift
//  [personages]
//
//  Created by Карина Дьячина on 9.06.24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            TabView {
                NavigationStack {
                    BlogView(post: UserPostData.posts()[1])
                        .navigationTitle("[blog]")
                }
                .tabItem {
                    Image(systemName: "popcorn")
                    Text("Blog")
                }
                .tag(0)
                
                NavigationStack {
                    Text("[Announcements]")
                        .font(.title)
                        .bold()
                        .foregroundColor(.accentColor)
                        .padding(.leading, -120.0)
                        .padding()
                    Spacer()
                }
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Events")
                    }
                    .tag(1)
                
                NavigationStack {
                    Text("[How you can find us]")
                        .font(.title)
                        .bold()
                        .foregroundColor(.accentColor)
                        .padding(.leading, -80.0)
                        .padding()
                    Spacer()
                }
                    .tabItem {
                        Image(systemName: "bubble.left.and.text.bubble.right")
                        Text("Contacts")
                    }
                    .tag(2)
                
                NavigationStack {
                    SignInView()
                }
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    .tag(3)
            }
            .accentColor(.accentColor)
        }
    }
}

#Preview {
    ContentView()
}
