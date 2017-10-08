//
//  Tweet.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 24.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

class Tweet {
    
    var tweets: Tweet?
    
    let tweetId: Int
    let name: String
    let username: String
    let tweetText: String
    let profileImageUrl: URL
    
    init(dict: Dictionary<String,Any>) {
        self.tweetId = Int(dict["tweet_id"] as! String)!
        self.name = dict["name"] as! String
        self.username = dict["username"] as! String
        self.tweetText = dict["tweet_text"] as! String
        self.profileImageUrl = URL(string: dict["profile_image_url"] as! String)!
        
    }
    
    class func createArrayOfTweets(dictionaries: [Dictionary<String, Any>]) -> [Tweet] {
        var tweets = [Tweet]()
        
        for dict in dictionaries {
            let tweet = Tweet(dict: dict)
            tweets.append(tweet)
        }
        
        return tweets
    }
    
}
