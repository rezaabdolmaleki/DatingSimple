//
//  UserApi.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/26/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
import ProgressHUD

class UserApi {
    public func signUp(withUserName username: String, email: String, password: String, image: UIImage?, onSuccess: @escaping() -> Void, onError: @escaping(_ error: String) -> Void){
        Auth.auth().createUser(withEmail: email, password: password) { (AuthData, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
            if let authData = AuthData {
                print(authData.user.email!)
                var dict : Dictionary<String, Any> =
                    [
                        "email" : authData.user.email!,
                        "uid" : authData.user.uid,
                        "userame" : username,
                        "profileImageURL" : "",
                        "status" :  ""
                ]
                
                
                guard let selectedImage = image else {
                    ProgressHUD.showError("Avatar photo is nil")
                    return
                }
                
                guard let imageData = selectedImage.jpegData(compressionQuality: 0.4) else {
                    return
                }
                let storageRef = Storage.storage().reference(withPath: "gs://datingsample-24efa.appspot.com")
                let storageProfile = storageRef.child("profile").child(authData.user.uid)
                let metaData = StorageMetadata()
                metaData.contentType = "image/jpg"
                
                storageProfile.putData(imageData, metadata: metaData, completion: { (storageMetaData, error) in
                    if error != nil {
                        ProgressHUD.showError(error?.localizedDescription)
                        return
                    }
                    
                    storageProfile.downloadURL(completion: { (imgURL, error) in
                        if let metaDataURL = imgURL?.absoluteString {
                            dict["profileImageURL"] = metaDataURL
                        }
                        Database.database().reference().child("users").child(authData.user.uid).updateChildValues(dict, withCompletionBlock: { (error, ref) in
                            if error == nil {
                                onSuccess()
                            }else {
                                onError(error!.localizedDescription)
                                //ProgressHUD.showError(error?.localizedDescription)
                            }
                        })
                    })
                })
            }
        }
    }
}
