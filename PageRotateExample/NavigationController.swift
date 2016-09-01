//
//  NavigationController.swift
//  PageRotateExample
//
//  Created by 龚浩 on 16/8/29.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    override func shouldAutorotate() -> Bool {
        return false
    }
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .Portrait
    }
}
