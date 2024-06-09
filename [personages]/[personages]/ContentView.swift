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
//            NavigationView {
//                VStack {
                    TabView {
                        Text("")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .tabItem {
                                Image(systemName: "book.pages")
                                Text("Blog")
                            }
                     
                        Text("")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .tabItem {
                                Image(systemName: "calendar")
                                Text("Events")
                            }
                     
                        Text("")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .tabItem {
                                Image(systemName: "bubble.left.and.text.bubble.right")
                                Text("Contacts")
                            }
                     
                        Text("")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .tabItem {
                                Image(systemName: "person")
                                Text("Profile")
                            }
                    }
                    .accentColor(.accentColor)
                }
                
               // .navigationTitle("[Personages]")
                
                
            }
        }
//    }
//}

#Preview {
    ContentView()
}
