//
//  BViewcontroller.swift
//  PageRotateExample
//
//  Created by 龚浩 on 16/8/29.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    override var shouldAutorotate : Bool {
        return true
    }
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return .landscape
    }
    //刚进入页面时的方向
    override var preferredInterfaceOrientationForPresentation : UIInterfaceOrientation {
        return .landscapeLeft
    }
    
    @IBAction func onBack(_ sender: AnyObject) {
        let nv = self.presentingViewController as? UINavigationController
        _ = nv?.popViewController(animated: false)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onTouchUp(_ sender: UIButton) {
        let nv = self.presentingViewController
        let sb = UIStoryboard(name: "Main", bundle: Bundle.main)
        let c = sb.instantiateViewController(withIdentifier: "CViewController")
        self.dismiss(animated: false, completion: nil)
        nv?.show(c, sender: nil)
    }
}
