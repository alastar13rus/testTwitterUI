//
//  HomeViewController.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 24.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TwitterDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var user: User!

    var tweets = Tweet.createArrayOfTweets(dictionaries: TwitterAPI.tweetsArray)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 160.0
        
        tableView.reloadData()
        
        
        user = User.currentUser!
//        if user.otherUser != nil {
//            user = user.otherUser
//        }

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tweets.count > 0 {
            return tweets.count
        } else {
            return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! TweetCell
        cell.tweet = tweets[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    func openProfile(screenname: String) {
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            self.tweets = Tweet.createArrayOfTweets(dictionaries: TwitterAPI.tweetsAlnidokArray)
            User.otherUser = User(dict: TwitterAPI.userAlnidok)
            DispatchQueue.main.async {
                let sb = UIStoryboard(name: "Main", bundle: Bundle.main)
                let navProfileVC = sb.instantiateViewController(withIdentifier: "navProfileVC") as! UINavigationController
                let profileVC = navProfileVC.viewControllers.first as! ProfileViewController
                profileVC.userScreenname = screenname
                self.present(navProfileVC, animated: true, completion: nil)
            }
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
