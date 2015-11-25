//
//  Tab.swift
//  Floot
//
//  Created by Jamone Alexander Kelly on 11/24/15.
//  Copyright © 2015 Jamone Kelly. All rights reserved.
//

import UIKit
import Foundation

class Tab: UITabBarController {
    
    override func viewDidAppear(animated: Bool) {
        guard let _ = flootData.valueForKey("floot_loogedIn") else {
            self.performSegueWithIdentifier("splashSegue", sender: self)
            return
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
