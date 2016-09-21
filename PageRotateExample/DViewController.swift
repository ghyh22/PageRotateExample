//
//  DViewController.swift
//  PageRotateExample
//
//  Created by 龚浩 on 16/8/29.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class DViewController: UIViewController {
    var b:BViewController!
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        if b == nil {
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            self.b = storyboard.instantiateViewController(withIdentifier: "BViewController") as! BViewController
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if b.view.window == nil {
            self.navigationController?.present(b, animated: false, completion: nil)
        }
    }
}
