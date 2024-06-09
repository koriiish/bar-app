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
                Text("")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "book.pages")
                        Text("Blog")
                    }
                    .tag(0)
                
                Text("")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Events")
                    }
                    .tag(1)
                
                Text("")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "bubble.left.and.text.bubble.right")
                        Text("Contacts")
                    }
                    .tag(2)
                
                Text("")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
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
