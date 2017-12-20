//
//  ViewController.swift
//  CustomFonts
//
//  Created by Attia Mo on 11/1/17.
//  Copyright © 2017 https://Attiamo.me All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        //self.firstLabel.font = UIFont.UIFont(name: "HelveticaNeueW23forSKY-Reg", size: 17)
        // Or you can replace it with
        // You can use it for Labels, TextFields, TextViews ..etc
        self.firstLabel.font = UIFont.appBoldFontWith(size: 17)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

