//
//  MessageViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/3.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit


//let navBarHeigh = 64 as CGFloat;
//let screenWideth = UIScreen.mainScreen().bounds.width as CGFloat;
//let screenHeight = UIScreen.mainScreen().bounds.height as CGFloat;
//let tabBarHeight = 71 as CGFloat;


class MessageViewController: TabBarViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.CreatTabBar();
        self.ConfigerNavBar("消息");
        self.CreatSearchBar();
        self.CreatTableView();
        
    }
    
    //MARK: 添加searchBar
    func CreatSearchBar() -> Void{
        
        let searchBar = UISearchBar(frame:CGRectMake(0 , navBarHeigh, screenWideth, 40));
        searchBar.placeholder = "输入关键字搜索";
        searchBar.delegate = self;
        searchBar.setShowsCancelButton(true, animated: true);
        searchBar.searchBarStyle = UISearchBarStyle.Default;
        self.view.addSubview(searchBar);
    
    }
    
    //MARK: 配置导航条
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
    
    //MARK: 配置tableView
    func CreatTableView() -> Void {
        
        let tableView = UITableView(frame:CGRectMake(0, navBarHeigh + 40, screenWideth, screenHeight - navBarHeigh - 40 - tabBarHeight));
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.rowHeight = 74;
        tableView.registerClass(MessageTableViewCell.self, forCellReuseIdentifier: "messageCell");
        self.view.addSubview(tableView);
        
        
    }
    //MARK: UISearchBarDelegate
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder();
    }
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchBar.resignFirstResponder();
    }
    
    
    //MARK: UITableViewDelegate
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    };
    

    //MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    };
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("messageCell");
        cell?.selectionStyle = UITableViewCellSelectionStyle.None;
        
        
        return cell!;
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