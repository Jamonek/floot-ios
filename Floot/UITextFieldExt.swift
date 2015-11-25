//
//  UITextFieldExt.swift
//  Coded
//
//  Created by FWISD on 7/2/15.
//  Copyright (c) 2015 GF-17. All rights reserved.
//

import UIKit
private var kAssociationKeyNextField: UInt8 = 0

extension UITextField {
    var nextField: UITextField? {
        get {
            return objc_getAssociatedObject(self, &kAssociationKeyNextField) as? UITextField
        }
        set(newField) {
            objc_setAssociatedObject(self, &kAssociationKeyNextField, newField, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}