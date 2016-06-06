//
//  PersonViewControllers.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/3.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class PersonViewController: TabBarViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dataSourceArr:NSMutableArray?
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        
        let oneDic:Dictionary<String,String> = ["main":"昵称","ps":"来自北方的魔鬼🍉"];
        
        let twoDic:Dictionary<String,String> = ["main":"性别","ps":"男"];
        
        let thirdDic:Dictionary<String,String> = ["main":"所在地","ps":"北京"];
        
        let fourDic:Dictionary<String,String> = ["main":"简介","ps":"谜一样的男子"];
        
        dataSourceArr = NSMutableArray.init(array: [oneDic,twoDic,thirdDic,fourDic]);
        
    
        self.CreatTabBar();
        self.ConfigerNavBar("个人中心");
        self.CreatTopView();
        self.CreatTableView();
        
    }
    func CreatTopView() -> Void {
        
        let topView = PersonTopView.init(frame: CGRectMake(0, navBarHeigh, screenWideth, 185));
        self.view.addSubview(topView);
    
    }
    
    func CreatTableView() -> Void {
        
        let tableView = UITableView(frame: CGRectMake(0, 275, screenWideth, screenHeight - 275 - tabBarHeight));
        tableView.rowHeight = 45;
        tableView.sectionHeaderHeight = 2;
        tableView.sectionFooterHeight = 1;
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.registerClass(PersonTableViewCell.self, forCellReuseIdentifier: "PersonTableViewCell")
        self.view.addSubview(tableView);
        
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
    //MARK: UITableViewDelegate
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4;
    }
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView();
        return view;
        
    }
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView();
        return view;
    }
    
    //MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:PersonTableViewCell = tableView.dequeueReusableCellWithIdentifier("PersonTableViewCell") as! PersonTableViewCell;
        cell.selectionStyle = UITableViewCellSelectionStyle.None;
        
        cell.CongfigerCell(dataSourceArr![indexPath.section] as! NSDictionary);
        
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