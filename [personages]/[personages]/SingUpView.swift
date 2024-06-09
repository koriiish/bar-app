//
//  SingUpView.swift
//  [personages]
//
//  Created by Карина Дьячина on 9.06.24.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var repeatPassword = ""
    var body: some View {
        ZStack(alignment: .center) {
            BackgroundSingUpView()
            VStack {
                Text("Sign Up")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.black)
                    .padding(.bottom)
                TextField("username", text: $username)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.accent, lineWidth: 1.5), alignment: .center)
                    .textFieldStyle(.roundedBorder)
                    .frame(maxWidth: 300)
                    .padding(.bottom)
                TextField("email", text: $email)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.accent, lineWidth: 1.5), alignment: .center)
                    .textFieldStyle(.roundedBorder)
                    .frame(maxWidth: 300)
                    .padding(.bottom)
                SecureField("password", text: $password)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.accent, lineWidth: 1.5), alignment: .center)
                    .textFieldStyle(.roundedBorder)
                    .frame(maxWidth: 300)
                    .padding(.bottom)
                SecureField("repeat password", text: $repeatPassword)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.accent, lineWidth: 1.5), alignment: .center)
                    .textFieldStyle(.roundedBorder)
                    .frame(maxWidth: 300)
                    .padding(.bottom)
                Button("Sign up") {
                    //
                }
                .foregroundStyle(Color.white)
                .frame(width: 300, height: 35, alignment: .center)
                .background(Color.black)
                .opacity(0.9)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.vertical, 10)
                HStack {
                    Text("Already have an account?")
                    Button("Sing up") {
                        //переход на sign in view
                    }
                }
            }
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 30, trailing: 20))
                .background(.white)
                .opacity(0.9)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)))
            
        }
    }
}
#Preview {
    SignUpView()
}
