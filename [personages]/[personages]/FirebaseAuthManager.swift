//
//  FirebaseAuthManager.swift
//  [personages]
//
//  Created by Карина Дьячина on 11.06.24.
//

import Foundation
import Firebase

class FirebaseAuthManager {
    
    func registNewUser(user: UserData) {
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
    
}
