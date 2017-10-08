//
//  LeftPageViewController.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 25.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

class LeftPageViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    @IBOutlet weak var followersCountLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    var user: User? {
        didSet {
            configureViewController()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "ConfigureLeftPageVC"), object: nil, queue: .main) { (notification) in
            if User.otherUser != nil {
                self.user = User.otherUser!
            }
        }

    }
    
    func configureViewController() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ConfigureRightPageVC"), object: nil)
//        if User.otherUser != nil {
//            user = User.otherUser
//        }
        nameLabel.text = user?.name
        usernameLabel.text = "@" + (user?.username)!
        print(String(user!.followersCount!))
        followersCountLabel.text = String(describing: user!.followersCount!)
        followingCountLabel.text = String(describing: user!.followingCount!)
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if User.otherUser != nil {
            self.user = User.otherUser!
        }
    }

}
