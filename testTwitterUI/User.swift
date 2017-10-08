//
//  User.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 24.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

class User: NSObject {
    var dict: Dictionary<String, Any>?
    var userId: Int?
    var name: String?
    var username: String?
    var desc: String?
    var profileImageUrl: URL?
    var backgroundImageUrl: URL?
    var followingCount: Int?
    var followersCount: Int?
    var locationString: String?
    
    
    init(dict: Dictionary<String, Any>) {
        self.dict = dict
        self.userId = dict["user_id"] as? Int
        self.name = dict["name"] as? String
        self.username = dict["username"] as? String
        self.desc = dict["description"] as? String
        
        self.profileImageUrl = URL(string: dict["profile_image_url"] as! String)
        self.backgroundImageUrl = URL(string: dict["background_image_url"] as! String)
        
        self.followersCount = Int(dict["followers_count"] as! String)
        self.followingCount = Int(dict["friends_count"] as! String)

        
        self.locationString = dict["location"] as? String
        
        
        
    }
    
    static var _currentUser: User?
    
    class var currentUser: User? {
        get {
            let defaults = UserDefaults.standard
            let userData = defaults.object(forKey: "currentUser") as? Data
            
            if let userData = userData {
                let dict = try! JSONSerialization.jsonObject(with: userData, options: []) as! Dictionary<String, Any>
                
                _currentUser = User(dict: dict)
            }
            
            return _currentUser
        }
        
        set(user) {
            let defaults = UserDefaults.standard
            if let user = user {
                let data = try! JSONSerialization.data(withJSONObject: user.dict!, options: [])
                defaults.set(data, forKey: "currentUser")
            } else {
                defaults.set(nil, forKey: "currentUser")
            }
            _currentUser = user
        }
        
        
    }
        static var otherUser: User?
}




















