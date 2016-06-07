//
//  HomeViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/2.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import UIKit
import Foundation

let navBarHeigh = 64 as CGFloat;
let screenWideth = UIScreen.mainScreen().bounds.width as CGFloat;
let screenHeight = UIScreen.mainScreen().bounds.height as CGFloat;
let tabBarHeight = 71 as CGFloat;





@objc protocol HomeViewControllerDelegate:NSObjectProtocol  {
    
    func getMessage(message:NSString) -> Void
    
    
}


class HomeViewController: TabBarViewController , UITableViewDelegate, UITableViewDataSource{
    
    internal var userName:NSString?
    internal var delegate:HomeViewControllerDelegate?
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        self.CreatTabBar();
        self.ConfigerNavBar("首页");
        
        //添加tableview
        self.CreatTableView();
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
    }
    //MARK: 配置导航条
    func ConfigerNavBar(title:NSString) -> Void {
        
        let titleLable = UILabel();
        titleLable.text = "首页";
        titleLable.textColor = UIColor.whiteColor();
        titleLable.frame = CGRectMake(0, 0, 48, 33);
        titleLable.font = UIFont.init(name: "Hiragino Maru Gothic Pro", size: 24);
        
        self.navigationItem.titleView = titleLable;
        self.navigationController?.navigationBar.barTintColor = UIColor(hue:0.56, saturation:0.22, brightness:0.97, alpha:1.00);
        
        self.view.backgroundColor = UIColor.whiteColor();

        
        print(self.tabBarController?.childViewControllers);
    }
    
    //MARK: 配置TableView
    func CreatTableView() -> Void {
        
        let tableView = UITableView(frame: CGRectMake(0, navBarHeigh, screenWideth, screenHeight - navBarHeigh - tabBarHeight) );
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.rowHeight = 211;
        tableView.sectionFooterHeight = 1;
        tableView.registerClass(HomeTableViewCell.self, forCellReuseIdentifier: "homeCell");
        self.view.addSubview(tableView);

        
    }
    //MARK: UITableViewDelegate
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 211.0;
//    }
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView();
        return view;
    }
    
    //MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("homeCell");
        cell?.selectionStyle = UITableViewCellSelectionStyle.None;
        
        return cell!;
    }
    
    
    //MARK:  重写父类TabBar按钮响应方法
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
        
        self.presentViewController(PublishViewController(), animated: true) { 
            
        };
        
        
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
    
    
    
    
    
}

