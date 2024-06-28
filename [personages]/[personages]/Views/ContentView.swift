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
                    BlogView(posts: UserPostData.posts())
//                        .navigationTitle("personages.[blog]")
                }
                .tabItem {
                    Image(systemName: "popcorn")
                    Text("Blog")
                }
                .tag(0)
                
                NavigationStack {
                    EventsView()
                }
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Events")
                    }
                    .tag(1)
                
                NavigationStack {
                    ContactsView()
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
