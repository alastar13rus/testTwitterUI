//
//  TabBarController.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 24.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    let userDict = TwitterAPI.userAlastar13rus
    
    override func viewDidLoad() {
        super.viewDidLoad()
        User.currentUser = User(dict: userDict)
    }

}
