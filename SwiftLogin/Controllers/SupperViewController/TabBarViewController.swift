//
//  TabBarViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/2.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class TabBarViewController: UIViewController,TabBarViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        
        self.CreatTabBar();
        
    }
    
    func CreatTabBar() -> Void {
        
        let tabBar = TabBarView();
        tabBar.delegate = self;
        tabBar.frame = CGRectMake(0, 596, self.view.frame.size.width, 71);
        self.view.addSubview(tabBar);
        
        
        
    }
    func HomeBtnClick() -> Void
    {
        
    }
    func MessageBtnClick() -> Void
    {
        
    }
    func AddBtnClick() -> Void
    {
        
    }
    func SetBtnClick() -> Void
    {
        
    }
    func PersonBtnClick() -> Void
    {
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    
    
}