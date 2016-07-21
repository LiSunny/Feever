//
//  PublishViewController.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/7.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit



class PublishViewController: UIViewController {

    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        self.view.backgroundColor = UIColor.whiteColor();
        self.CreatTopLable();
        self.CreatPublishBtn();
        self.CreatCancelBtn();
    
    }
    
    func CreatTopLable() -> Void {
        
        let topLable = UILabel();
        topLable.frame = CGRectMake(104, 60, 139, 69);
        topLable.text = "随时随地\n分享新鲜事";
        topLable.transform = CGAffineTransformMakeRotation(-CGFloat(M_PI_2/6));
        topLable.numberOfLines = 0;
        topLable.highlighted = true;
        topLable.font = UIFont.init(name: "PingFang SC", size: 24);
        self.view.addSubview(topLable);
        
    }
    
    func CreatPublishBtn() -> Void {
        
        let imageArr = ["text","pic","headline","sign","comment","more"];
        let titleArr = ["文字","图片/视频","头条","签到","评论","更多"];
        
        for i in 0 ..< imageArr.count  {
            
            let image = UIImage(named: imageArr[i]);
            
            let btn = UIButton(type:UIButtonType.Custom);
            btn.titleLabel?.font = UIFont.init(name: "PingFang SC", size: 15);
            btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal);
            btn.setTitle(titleArr[i], forState: UIControlState.Normal);
            btn.titleEdgeInsets = UIEdgeInsets.init(top: 90, left: 0, bottom: 0, right: 0);
            btn.setBackgroundImage(image, forState: UIControlState.Normal);
            btn.tag = i + 10010;
            btn.frame = CGRectMake(45 + CGFloat(i%3) * (61 + 51),236 + CGFloat(i/3) * (61 + 50), 61, 61);
            btn.addTarget(self, action: #selector(PublishViewController.btnCLick(_:)), forControlEvents: UIControlEvents.TouchUpInside);
            
            self.view.addSubview(btn);
        }
        
    }
    
    func CreatCancelBtn() -> Void {
        let btn = UIButton.init(type: UIButtonType.Custom);
        btn.setImage(UIImage.init(named: "cancel"), forState: UIControlState.Normal);
        btn.frame = CGRectMake(160, 550, 39, 39);
        btn.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_2));
        btn.addTarget(self, action: #selector(PublishViewController.CancelBtnClick) , forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(btn);
        
    }
    
    //MARK: 用户交互
    func CancelBtnClick() -> Void {
        self.dismissViewControllerAnimated(true) { 
            
        }
    }
    
    
    func btnCLick(btn:UIButton) -> Void {
        switch btn.tag {
        case 10010:
            print("文字");
            break;
        case 10011:
            print("图片");
            break;
        case 10012:
            print("头条");
            break;
        case 10013:
            print("签到");
            break;
        case 10014:
            print("评论");
            break;
        case 10015:
            print("更多");
            break;
        default:
            break;
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
        
        
    }
    
}