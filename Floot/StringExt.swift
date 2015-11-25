//
//  StringExt.swift
//  Floot
//
//  Created by Jamone Alexander Kelly on 11/24/15.
//  Copyright © 2015 Jamone Kelly. All rights reserved.
//

import UIKit

extension String {
    
    func toAttributedString(font font:UIFont!, kerning: CGFloat!, color:UIColor!) -> NSAttributedString {
        let attributes = [
            NSFontAttributeName : font,
            NSForegroundColorAttributeName : color,
            NSTextEffectAttributeName : NSTextEffectLetterpressStyle,
            NSKernAttributeName: kerning,
            NSStrokeWidthAttributeName : 3.0
            ]
        
        return NSAttributedString(string: self as String, attributes: attributes)
        
    }
}