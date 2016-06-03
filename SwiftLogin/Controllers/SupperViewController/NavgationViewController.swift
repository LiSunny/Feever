//
//  NavgationViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/3.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit
class NavgationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        

        
    }
    func ConfigerNavBar(title:NSString) -> Void {
        
        let titleLable = UILabel();
        titleLable.text = title as String;
        titleLable.textColor = UIColor.whiteColor();
        titleLable.frame = CGRectMake(0, 0, 48, 33);
        titleLable.font = UIFont.init(name: "Hiragino Maru Gothic Pro", size: 24);
        
        self.navigationItem.titleView = titleLable;
        self.navigationController?.navigationBar.barTintColor = UIColor(hue:0.56, saturation:0.22, brightness:0.97, alpha:1.00);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    
    
    
    
}