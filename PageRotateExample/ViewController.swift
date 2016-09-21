//
//  ViewController.swift
//  PageRotateExample
//
//  Created by 龚浩 on 16/8/29.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTouchUp(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
//        let b = storyboard.instantiateViewControllerWithIdentifier("BViewController")
//        self.presentViewController(b, animated: true, completion: nil)
        self.show(DViewController(), sender: nil)
    }
    
    override var shouldAutorotate : Bool {
        return false
    }
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return .portrait
    }
    override var preferredInterfaceOrientationForPresentation : UIInterfaceOrientation {
        return .portrait
    }
}

