//
//  DViewController.swift
//  PageRotateExample
//
//  Created by 龚浩 on 16/8/29.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class DViewController: UIViewController {
    var b:BViewcontroller!
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        if b == nil {
            let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            self.b = storyboard.instantiateViewControllerWithIdentifier("BViewController") as! BViewcontroller
        }
    }
    override func viewWillAppear(animated: Bool) {
        if !b.showing {
            self.presentViewController(b, animated: false, completion: nil)
        }
    }
}
