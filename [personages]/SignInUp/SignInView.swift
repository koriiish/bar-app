//
//  SignInView.swift
//  [personages]
//
//  Created by Карина Дьячина on 9.06.24.
//

import Foundation
import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showSignUpView = false
    
    var body: some View {
        ZStack(alignment: .center) {
            BackgroundSignInView()
            VStack {
                Text("Sign In")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.black)
                    .padding(.bottom)
                TextField("e-mail", text: $email)
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
                    .foregroundColor(.black)
                Button("Sign in") {
                    //
                }
                .foregroundStyle(Color.white)
                .frame(width: 300, height: 35, alignment: .center)
                .background(Color.black)
                .opacity(0.9)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.top, 10)

                Button("Click here if you forgot your password") {
                    //renewal password with email
                }
                .padding(.vertical, 10)
                HStack {
                    Text("Don't have an account?")
                    NavigationLink(destination: SignUpView()) {
                        Text ("Sign up")
                    }
                }
            }
            .padding(EdgeInsets(top: 30, leading: 20, bottom: 45, trailing: 20))
            .background(.white)
            .opacity(0.9)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)))
        }
    }
}

#Preview {
    SignInView()
}

