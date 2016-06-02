//
//  HomeViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/2.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import UIKit
import Foundation


@objc protocol HomeViewControllerDelegate:NSObjectProtocol  {
    
    func getMessage(message:NSString) -> Void
    
    
}


class HomeViewController: UIViewController {
    
    internal var userName:NSString?
    internal var delegate:HomeViewControllerDelegate?
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        self.view.backgroundColor = UIColor.whiteColor();
        
        self.ConfigerNavBar();
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
    }
    
    func ConfigerNavBar() -> Void {
        
        let titleLable = UILabel();
        titleLable.text = "首页";
        titleLable.textColor = UIColor.whiteColor();
        titleLable.frame = CGRectMake(0, 0, 48, 33);
        titleLable.font = UIFont.init(name: "Hiragino Maru Gothic Pro", size: 24);
        
        self.navigationItem.titleView = titleLable;
        self.navigationController?.navigationBar.barTintColor = UIColor(hue:0.56, saturation:0.22, brightness:0.97, alpha:1.00);

    }
    
    
    
}

