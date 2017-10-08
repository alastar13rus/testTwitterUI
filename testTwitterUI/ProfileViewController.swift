//
//  ProfileViewController.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 24.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit
import AFNetworking

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TwitterDelegate {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileSuperView: UIView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var profileContainerView: UIView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var closeProfileButton: UIButton!
    
    @IBOutlet weak var backgroundImageBigHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var backgroundImageSmallHeightConstraint: NSLayoutConstraint!
    
    
    
    var tweets = Tweet.createArrayOfTweets(dictionaries: TwitterAPI.tweetsAlasatar13rusArray)
    
    var user: User!
    var userScreenname: String?
    
    var gradientLayer: CAGradientLayer!

    override func viewDidLoad() {
        super.viewDidLoad()

            self.tableView.delegate = self
            self.tableView.dataSource = self
        
        
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "ConfigureProfileVC"), object: nil, queue:OperationQueue.main) { (notification) in
            self.user = User.otherUser
            self.configureProfileVC()
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        tweets = Tweet.createArrayOfTweets(dictionaries: TwitterAPI.tweetsAlasatar13rusArray)
        User.otherUser = nil
        if userScreenname == nil {
            user = User.currentUser!
            configureProfileVC()
        } else {
            //populate User by screenname via api
            User.otherUser = User(dict: TwitterAPI.userAlnidok)
            tweets = Tweet.createArrayOfTweets(dictionaries: TwitterAPI.tweetsAlnidokArray)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ConfigureProfileVC"), object: nil)
            
        }
    }
    
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = self.shadowView.bounds
    }

    func configureProfileVC() {
        User.otherUser = user
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ConfigureLeftPageVC"), object: nil)
        profileImageView.setImageWith(user.profileImageUrl!)
        profileImageView.layer.cornerRadius = 32
        profileImageView.clipsToBounds = true
        profileSuperView.layer.cornerRadius = 40
        profileImageView.clipsToBounds = true
        backgroundImageView.setImageWith(user.backgroundImageUrl!)
        backgroundImageView.contentMode = .scaleAspectFill
        
        if User.otherUser != nil {
            closeProfileButton.isHidden = false
        } else {
            closeProfileButton.isHidden = true
        }
        closeProfileButton.addTarget(self, action: #selector(self.closeProfile), for: UIControlEvents.touchUpInside)
        
//        setup shadow gradient
        
        gradientLayer = {
            let gl = CAGradientLayer()
//            gl.frame = self.shadowView.bounds
            let topColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
            let bottomColor = UIColor(white: 0, alpha: 0).cgColor
            gl.colors = [topColor,bottomColor]
            gl.locations = [0.0, 1.0]
            return gl
        }()
        
        shadowView.layer.addSublayer(gradientLayer)
        
    }
    
    func closeProfile() {
        self.dismiss(animated: true, completion: nil)
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
        tweets = Tweet.createArrayOfTweets(dictionaries: TwitterAPI.tweetsAlnidokArray)
        User.otherUser = User(dict: TwitterAPI.userAlnidok)
        
        let sb = UIStoryboard(name: "Main", bundle: Bundle.main)
        let navProfileVC = sb.instantiateViewController(withIdentifier: "navProfileVC") as! UINavigationController
        let profileVC = navProfileVC.viewControllers.first as! ProfileViewController
        profileVC.userScreenname = screenname
        self.present(navProfileVC, animated: true, completion: nil)
        print(navigationController?.viewControllers)
        
    }
    
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.view.layoutIfNeeded()
        
        
        self.backgroundImageBigHeightConstraint.isActive = true
        self.backgroundImageSmallHeightConstraint.isActive = false

        
        UIView.animate(withDuration: 1.0) {
            self.backgroundImageBigHeightConstraint.isActive = false
            self.backgroundImageSmallHeightConstraint.isActive = true
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
