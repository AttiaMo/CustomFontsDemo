//
//  Extensions.swift
//  CustomFonts
//
//  Created by Attia Mo on 11/12/17.
//  Copyright © 2017 https://Attiamo.me All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    var substituteFontName : String {
        get { return self.font.fontName }
        set {
            if self.font.fontName.range(of:"-Bd") == nil {
                self.font = UIFont(name: newValue, size: self.font.pointSize)
            }
        }
    }
    
    var substituteFontNameBold : String {
        get { return self.font.fontName }
        set {
            if self.font.fontName.range(of:"-Bd") != nil {
                self.font = UIFont(name: newValue, size: self.font.pointSize)
            }
        }
    }
}
extension UITextField {
    var substituteFontName : String {
        get { return self.font!.fontName }
        set { self.font = UIFont(name: newValue, size: (self.font?.pointSize)!) }
    }
}

extension UIFont {
    class func appRegularFontWith( size:CGFloat ) -> UIFont{
        return  UIFont(name: Constants.App.regularFont, size: size)!
    }
    
    class func appBoldFontWith( size:CGFloat ) -> UIFont{
        return  UIFont(name: Constants.App.boldFont, size: size)!
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
