//
//  FirebaseAuthManager.swift
//  [personages]
//
//  Created by Карина Дьячина on 11.06.24.
//

import Foundation
import SwiftUI
import Firebase

class FirebaseAuthManager: ObservableObject {
    
    @AppStorage("isSignedIn") var isSignedIn = false
    @Published var email = ""
    @Published var password = ""
    @Published var alert = false
    @Published var alertMessage = ""
    
    
    private func showAlertMessage(message: String) {
        alertMessage = message
        alert.toggle()
    }
    
    //MARK: - SingUp and valid
    func registNewUser(user: UserData) {
        if email.isEmpty || password.isEmpty {
            showAlertMessage(message: "Neither email nor password can be empty.")
            return
        }
        
        Auth.auth().createUser(withEmail: user.email, password: user.password) { result, error in
            guard error == nil else {
                print(error?.localizedDescription)
                return
            }
            result?.user.sendEmailVerification()
            if let uid = result?.user.uid {
                Firestore.firestore()
                    .collection("users")
                    .document(uid)
                    .setData([
                        "email" : user.email,
                        "name" : user.userName
                    ], merge: true) { error in
                        print("saved")
                    }
            }
        }
    }
    //MARK: - SingIn and valid
    func login() {
        if email.isEmpty || password.isEmpty {
            showAlertMessage(message: "Neither email nor password can be empty.")
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { result, err in
            if let err = err {
                self.alertMessage = err.localizedDescription
                self.alert.toggle()
            } else {
                self.isSignedIn = true
            }
        }
    }
    
    //MARK: - LogOut
    func logout() {
        do {
            try Auth.auth().signOut()
            isSignedIn = false
            email = ""
            password = ""
        } catch {
            print("Error signing out: \(error)")
        }
    }
    
    func resetPassword() {
        Auth.auth().sendPasswordReset(withEmail: email)
    }
}



let firebase = FirebaseAuthManager()
    
