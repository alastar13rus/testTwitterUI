//
//  TwitterDelegate.swift
//  testTwitterUI
//
//  Created by Andrey Dokin on 27.09.17.
//  Copyright © 2017 Andrey Dokin. All rights reserved.
//

import UIKit

protocol TwitterDelegate: class, UITableViewDelegate {
    func openProfile(screenname: String)
}
