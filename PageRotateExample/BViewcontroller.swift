//
//  BViewcontroller.swift
//  PageRotateExample
//
//  Created by 龚浩 on 16/8/29.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class BViewcontroller: UIViewController {
    
    var showing = false
    override func viewDidAppear(animated: Bool) {
        showing = true
    }
    override func viewDidDisappear(animated: Bool) {
        showing = false
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Landscape
    }
    //刚进入页面时的方向
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return .LandscapeLeft
    }
    
    @IBAction func onBack(sender: AnyObject) {
        let nv = self.presentingViewController as? UINavigationController
        nv?.popViewControllerAnimated(false)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onTouchUp(sender: UIButton) {
        let nv = self.presentingViewController
        let sb = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        let c = sb.instantiateViewControllerWithIdentifier("CViewController")
        self.dismissViewControllerAnimated(false, completion: nil)
        nv?.showViewController(c, sender: nil)
    }
}
