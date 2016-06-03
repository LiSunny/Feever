//
//  ViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/1.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import UIKit
import Foundation

class ViewController:UIViewController,UITextFieldDelegate,HomeViewControllerDelegate{
    
    var  inputImageView:UIImageView?
    var userNameTX:UITextField?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //添加大背景
        self.CreatBgImageView();
        
        //添加输入框背景
        self.CreatInputBgImageView();
        
        //添加登录按钮
        self.CreatLoginBtn();
        
        //添加textfield
        self.CreatPasswordTX();
        self.CreatUserNameTX();
        
        //添加标题
        self.CreatMaxTitleImage();
        
        //添加分享
        self.CreatOtherWay();
        self.CreatWeChat();
        self.CreatSinaWeb();
        self.CreatWeFriends();
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func CreatMaxTitleImage() -> Void {
        
        let label = UILabel();
        label.font = UIFont.init(name: "Arial Rounded MT Bold", size: 36);
        label.text = "FEEVER";
        label.textColor = UIColor.whiteColor();
        label.frame = CGRectMake(115, 76, 145, 42);
    
        self.view.addSubview(label);
        
    }
    
    func CreatBgImageView() -> Void {
        
        let image = UIImage(named:  "bgimage");
        
        let bgImageView = UIImageView(image: image);
        bgImageView.frame = self.view.bounds;
        
        
        self.view.addSubview(bgImageView);
        
    }
    
    func CreatInputBgImageView() -> Void {
        
        let image = UIImage(named: "input");
        
        inputImageView = UIImageView(image: image);
        inputImageView?.userInteractionEnabled = true;
        inputImageView!.frame = CGRectMake(36, 182, 269, 152);
        
        self.view.addSubview(inputImageView!);
        
    }
    
    func CreatLoginBtn() -> Void {
        
        let loginBtn = UIButton(type: UIButtonType.Custom);
        loginBtn.frame = CGRectMake(271, 224, 68, 68);
        loginBtn.setImage(UIImage(named: "loginBtn"), forState: UIControlState.Normal);
        loginBtn.addTarget(self, action: #selector(ViewController.loginBtnClick), forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(loginBtn);
        
    }
    
    func CreatUserNameTX() -> Void {
        
        userNameTX = UITextField();
        userNameTX!.borderStyle = UITextBorderStyle.None;
        userNameTX!.returnKeyType = UIReturnKeyType.Done;
        userNameTX!.placeholder = "用户名";
        userNameTX!.delegate = self;
        userNameTX!.textAlignment = NSTextAlignment.Center;
        userNameTX!.frame = CGRectMake(8, 34, 217, 33);
        userNameTX!.keyboardType = UIKeyboardType.NamePhonePad;
        self.inputImageView?.addSubview(userNameTX!);
        
    }
    
    func CreatPasswordTX() -> Void {
        let passwordTX = UITextField();
        passwordTX.borderStyle = UITextBorderStyle.None;
        passwordTX.placeholder = "密码";
        passwordTX.returnKeyType = UIReturnKeyType.Done;
        passwordTX.delegate = self;
        passwordTX.textAlignment = NSTextAlignment.Center;
        passwordTX.frame = CGRectMake(8, 90, 217, 33)
        passwordTX.secureTextEntry = true;
        passwordTX.keyboardType = UIKeyboardType.NamePhonePad;
        self.inputImageView?.addSubview(passwordTX);
        
        
    }
    
    func CreatOtherWay() -> Void {
        
        let image = UIImage(named: "otherWay");
        
        let imageView = UIImageView(image: image);
        
        imageView.frame = CGRectMake(36, 451, 303, 20);
        self.view.addSubview(imageView);
        
    }
    
    func CreatWeChat() -> Void {
        
        let image = UIImage(named: "weChatIcon");
        
        let weChatBtn = UIButton(type: UIButtonType.Custom);
        weChatBtn.setImage(image, forState: UIControlState.Normal);
        weChatBtn.frame = CGRectMake(63, 506, 41, 34);
        weChatBtn.addTarget(self, action: #selector(ViewController.weChat), forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(weChatBtn);
        
    }
    
    func CreatSinaWeb() -> Void {
        
        let image = UIImage(named: "sinaWeb");
        
        let sinaWebBtn = UIButton(type: UIButtonType.Custom);
        sinaWebBtn.setImage(image, forState: UIControlState.Normal);
        sinaWebBtn.frame = CGRectMake(169, 508, 37, 32);
        sinaWebBtn.addTarget(self, action: #selector(ViewController.sinaWeb), forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(sinaWebBtn);
    }
    
    func CreatWeFriends() -> Void {
        
        let image = UIImage(named: "qq");
        
        let weFriendsBtn = UIButton(type: UIButtonType.Custom);
        weFriendsBtn.setImage(image, forState: UIControlState.Normal);
        weFriendsBtn.frame = CGRectMake(271, 506, 35, 36);
        weFriendsBtn.addTarget(self, action: #selector(ViewController.weFriends), forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(weFriendsBtn);
        
    }
    
    //事件响应
    func loginBtnClick() {
        
        self.view.endEditing(true);
        NSLog("登陆");
        
        //首页
        let homeVC = HomeViewController();
        homeVC.delegate = self;
        homeVC.userName = userNameTX?.text;
        let homeNavController = UINavigationController(rootViewController:homeVC);
        
        //消息页
        let messageVC = MessageViewController();
        let messageNavController = UINavigationController(rootViewController:messageVC);
        
        //设定页
        let setVC = SetViewController();
        let setNavController = UINavigationController(rootViewController:setVC);
        
        //个人中心页
        let personVC = PersonViewController();
        let personNavController = UINavigationController(rootViewController:personVC);
        
    
        let tabBarController = UITabBarController();
        tabBarController.tabBar.hidden = true;
        tabBarController.viewControllers = [homeNavController,messageNavController,setNavController,personNavController];
        
        self .presentViewController(tabBarController, animated: true) {
            
            
        };
    
        
        
        
    }
    
    func getMessage(message:NSString) -> Void {
        
        print(message);
        
    }
    
    func weChat() {
    
        NSLog("weChat");
    }
    
    func sinaWeb() {
        
        NSLog("sinaWeb");
    }
    
    func weFriends() {
        
        NSLog("weFriends");
    }
    
    
    //textfieldDelegate
    func textFieldDidBeginEditing(textField: UITextField) {
        
        NSLog("textFieldDidBeginEditing");
        
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder();
        
        return true;
    }
    
    


}

