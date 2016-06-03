//
//  SetViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/3.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class SetViewController: TabBarViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.CreatTabBar();
        self.ConfigerNavBar("设定")
        
    }
    func ConfigerNavBar(title:NSString) -> Void {
        
        let titleLable = UILabel();
        titleLable.text = title as String;
        titleLable.textColor = UIColor.whiteColor();
        titleLable.frame = CGRectMake(0, 0, 48, 33);
        titleLable.font = UIFont.init(name: "Hiragino Maru Gothic Pro", size: 24);
        
        self.navigationItem.titleView = titleLable;
        self.navigationController?.navigationBar.barTintColor = UIColor(hue:0.56, saturation:0.22, brightness:0.97, alpha:1.00);
        
        self.view.backgroundColor = UIColor.whiteColor();
        
    }
    //MARK: 重写父类TabBar按钮响应方法
    override func HomeBtnClick() -> Void
    {
        print("HOME首页");
        self.tabBarController?.selectedIndex = 0;
        
    }
    override func MessageBtnClick() -> Void
    {
        print("HOME消息");
        self.tabBarController?.selectedIndex = 1;
        
    }
    override func AddBtnClick() -> Void
    {
        print("HOME添加");
        
    }
    override func SetBtnClick() -> Void
    {
        print("HOME设定");
        self.tabBarController?.selectedIndex = 2;
    }
    override func PersonBtnClick() -> Void
    {
        print("HOME个人中心");
        self.tabBarController?.selectedIndex = 3;
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
    }
    
}
