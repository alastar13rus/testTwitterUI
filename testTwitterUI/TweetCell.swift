//
//  TweetCell.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 24.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit
import AFNetworking

class TweetCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var user: User?
    var tweets: [Tweet]?
    weak var delegate: TwitterDelegate?
    
    var tweet: Tweet! {
        didSet {
            nameLabel.text = tweet.name
            usernameLabel.text = tweet.username
            tweetTextLabel.text = tweet.tweetText
            profileImageView.setImageWith(tweet.profileImageUrl)
            profileImageView.layer.cornerRadius = 5
            profileImageView.clipsToBounds = true
    
            let tapByUsername = UITapGestureRecognizer(target: self, action: #selector(TweetCell.openProfile))
            nameLabel.isUserInteractionEnabled = true
            nameLabel.addGestureRecognizer(tapByUsername)
            
        }
    }
    
    func openProfile() {
        self.delegate!.openProfile(screenname: "Alnidok")
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
