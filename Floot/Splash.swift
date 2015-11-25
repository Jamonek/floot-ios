//
//  Splash.swift
//  Floot
//
//  Created by Jamone Alexander Kelly on 11/24/15.
//  Copyright © 2015 Jamone Kelly. All rights reserved.
//

import Foundation
import UIKit
import Shimmer

class Splash: UIViewController {
    @IBOutlet var signButton: UIButton!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var username: UITextField!
    @IBOutlet var splashLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label: UILabel = UILabel()
        
        let title: NSAttributedString = "Floot".toAttributedString(font: UIFont(name: "HelveticaNeue-Light", size: 40), kerning: 0.8, color: UIColor.whiteColor().flatten())
        label.attributedText = title
        
        label.sizeToFit()
        label.textAlignment = .Center
        
        self.navigationItem.titleView = label
        self.view.backgroundColor = UIColor.whiteColor().flatten()
        
        self.signButton.layer.cornerRadius = 5
        
        self.segmentedControl.layer.cornerRadius = 5
        
        self.segmentedControl.addTarget(self, action: "switchForm:", forControlEvents: .ValueChanged)
        
        self.splashLabel.text = "Please sign in below to access Floots from your school."
        self.splashLabel.sizeToFit()
        
    }
    
    func switchForm(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.username.alpha = 1.0
        } else {
            self.username.alpha = 0.0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}