//
//  TwitterAPI.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 24.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import Foundation


class TwitterAPI {
    
    static let tweetsArray: [Dictionary<String, Any>] = {
        let dict1: Dictionary<String, Any> = [
            "tweet_id": "1",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "first tweet alastar tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict2: Dictionary<String, Any> = [
            "tweet_id": "2",
            "name": "Aleksandr",
            "username": "alnidok",
            "tweet_text": "first tweet alnidok",
            "profile_image_url": "https://pp.userapi.com/c840227/v840227908/20b6e/7j9RrYhrFFo.jpg"
        ]
        let dict3: Dictionary<String, Any> = [
            "tweet_id": "3",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "second tweet alastar",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        
        return [dict1, dict2, dict3]
    }()
    
    static let tweetsAlasatar13rusArray: [Dictionary<String, Any>] = {
        let dict1: Dictionary<String, Any> = [
            "tweet_id": "1",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "first tweet alastar tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict2: Dictionary<String, Any> = [
            "tweet_id": "2",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "second tweet alastar",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict3: Dictionary<String, Any> = [
            "tweet_id": "3",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "first tweet alastar tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict4: Dictionary<String, Any> = [
            "tweet_id": "4",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "second tweet alastar",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict5: Dictionary<String, Any> = [
            "tweet_id": "5",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "first tweet alastar tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        
        return [dict1, dict2, dict3, dict4, dict5]
    }()
    
    
    static let tweetsAlnidokArray: [Dictionary<String, Any>] = {
        let dict1: Dictionary<String, Any> = [
            "tweet_id": "1",
            "name": "Alnidok",
            "username": "Alnidok",
            "tweet_text": "first tweet alnidok tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict2: Dictionary<String, Any> = [
            "tweet_id": "2",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "second tweet alastar",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict3: Dictionary<String, Any> = [
            "tweet_id": "3",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "first tweet alastar tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict4: Dictionary<String, Any> = [
            "tweet_id": "4",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "second tweet alastar",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        let dict5: Dictionary<String, Any> = [
            "tweet_id": "5",
            "name": "Andrey",
            "username": "alastar13rus",
            "tweet_text": "first tweet alastar tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pp.userapi.com/c636317/v636317028/67258/TfmCrLFrOmM.jpg"
        ]
        
        return [dict1, dict2, dict3, dict4, dict5]
    }()
    
    static let userAlastar13rus: Dictionary<String, String> = {
        let dict: Dictionary<String, String> = [
            "user_id": "1",
            "name": "Andrey",
            "username": "alastar13rus",
            "description": "first tweet alastar tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pbs.twimg.com/profile_images/912035053596741632/cbT0b2Wk_bigger.jpg",
            "background_image_url": "https://pbs.twimg.com/profile_banners/357586164/1506281120/600x200",
            "followers_count" : "123",
            "friends_count" : "456",
            
        ]
        return dict
    }()
    
    static let userAlnidok: Dictionary<String, String> = {
        let dict: Dictionary<String, String> = [
            "user_id": "2",
            "name": "Aleksandr",
            "username": "alnidok",
            "description": "first tweet alnidok tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel tweetTextLabel v tweetTextLabel",
            "profile_image_url": "https://pbs.twimg.com/profile_images/629882224431747072/YHIQy1Vz_400x400.jpg",
            "background_image_url": "https://pbs.twimg.com/profile_images/629882224431747072/YHIQy1Vz_400x400.jpg",
            "followers_count" : "24",
            "friends_count" : "62",
            
        ]
        return dict
    }()
    
}
