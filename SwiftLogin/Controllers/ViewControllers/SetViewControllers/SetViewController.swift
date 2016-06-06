//
//  SetViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/3.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class SetViewController: TabBarViewController ,UITableViewDelegate,UITableViewDataSource {
    
    var titleArr:NSMutableArray?
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        titleArr = [["帐号管理"],["通知","隐私与安全","通用设置"],["清理缓存","意见返回","关于feever"],["退出登录"]];
        
        
        self.CreatTabBar();
        self.ConfigerNavBar("设定");
        self.CreatSetTableView();
        
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
    
    func CreatSetTableView() -> Void {
        
        let tableView = UITableView(frame: CGRectMake(0, navBarHeigh, screenWideth, screenHeight - navBarHeigh - tabBarHeight));
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None;
        tableView.delegate = self;
        tableView.rowHeight = 45;
        tableView.sectionHeaderHeight = 17;
        tableView.dataSource = self;
        tableView.registerClass(SetTableViewCell.self , forCellReuseIdentifier: "setTableView");
        self.view.addSubview(tableView);
        
    }
    //MARK:UITableViewDelegate
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView();
        
        return view;
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 4;
        
    }
    
    //MARK:UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1;
        case 1:
            tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine;
            tableView.separatorColor = UIColor.whiteColor();
            return 3;
        case 2:
            tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine;
            tableView.separatorColor = UIColor.whiteColor();
            return 3;
        case 3:
            return 1;
        default:
            return 0;
        }
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:SetTableViewCell = tableView.dequeueReusableCellWithIdentifier( "setTableView") as! SetTableViewCell;
        
        cell.selectionStyle = UITableViewCellSelectionStyle.None;
        
        let textArr:NSArray = titleArr![indexPath.section] as! NSArray;
        
        let textStr = textArr[indexPath.row];
        
        cell.ConfigerTitleLable(textStr as! NSString);
        
        return cell;
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
