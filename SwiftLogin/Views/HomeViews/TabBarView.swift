//
//  TabBarView.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/2.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit



protocol TabBarViewDelegate {
    
    func HomeBtnClick() -> Void
    func MessageBtnClick() -> Void
    func AddBtnClick() -> Void
    func SetBtnClick() -> Void
    func PersonBtnClick() -> Void
    
}



class TabBarView: UIView {
    
    
    let ScreenWidth = UIScreen.mainScreen().bounds.width;
    internal var delegate:TabBarViewDelegate?
    
     override init(frame: CGRect) {
        
        super.init(frame: frame);
        
        //创建导航条背景
        self.CreatTabBarBG();
        //添加导航条按钮
        self.CreatBtn();
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:- 创建背景
    func CreatTabBarBG() -> Void {
        
        let image = UIImage(named: "CombinedShape");
        let bgImageView = UIImageView(image: image);
        bgImageView.frame = CGRectMake(0, 0,ScreenWidth, 71);
        
        self.addSubview(bgImageView);
        
    }
    func CreatBtn() -> Void {
        
        
        let imageArr = ["home","information","add","set","preson"];
        
        
        for  i  in  0 ..< imageArr.count {
            
            let image = UIImage(named: imageArr[i]);
            
            let btn = UIButton(type:UIButtonType.Custom);
            btn.setImage(image, forState: UIControlState.Normal);
            btn.tag = i + 10086;
            if i != 2 {
                
                if i < 2 {
                    //前两个按钮
                     btn.frame = CGRectMake(22 + CGFloat(i) * (33 + 35), 21, 33, 33);
                }else{
                    //后两个按钮
                    btn.frame = CGRectMake(252 + CGFloat(i - 3) * (33 + 35), 21, 33, 33);
                }
                
            }else{
                //中间大按钮
                btn.frame = CGRectMake(156, 5, 63, 63);
        
            }
            btn.addTarget(self, action: #selector(TabBarView.btnClick(_:)), forControlEvents: UIControlEvents.TouchUpInside);
            
            self.addSubview(btn);
            
        }
        
    }
    
    func btnClick(btn:UIButton) -> Void {
        
        switch btn.tag {
        case 10086:
            print("首页");
            self.delegate?.HomeBtnClick();
            break;
        case 10087:
            print("消息");
            self.delegate?.MessageBtnClick();
            break;
        case 10088:
            print("添加");
            self.delegate?.AddBtnClick();
            break;
        case 10089:
            print("设定");
            self.delegate?.SetBtnClick();
            break;
        case 10090:
            print("个人中心");
            self.delegate?.PersonBtnClick();
            break;
        default:
            print("未知按钮");
            break;
        }
        
        
        
    }
    
    
    
}