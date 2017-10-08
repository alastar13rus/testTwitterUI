//
//  RightPageViewController.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 25.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

class RightPageViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var user: User? {
        didSet {
            print(user)
            configureViewController()
        }
    }
    
    func configureViewController() {
        descriptionLabel.text = user!.desc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "ConfigureRightPageVC"), object: nil, queue: .main) { (notification) in
            if User.otherUser != nil {
                self.descriptionLabel.text = User.otherUser?.desc
            }
           
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if User.otherUser != nil {
            self.descriptionLabel.text = User.otherUser?.desc
        }
    }
    

}
