//
//  TabBarView.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/2.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class TabBarView: UIView {
    
    
     override init(frame: CGRect) {
        
        super.init(frame: frame);
        
        //创建导航条背景
        self.CreatTabBarBG();
        //添加导航条按钮
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:- 创建背景
    func CreatTabBarBG() -> Void {
        
        let image = UIImage(named: "Combined Shape");
        let bgImageView = UIImageView(image: image);
        bgImageView.frame = CGRectMake(0, 596, self.frame.size.width, 71);
        
        self.addSubview(bgImageView);
        
    }
    func CreatBtn() -> Void {
        
        for _ in 1 ... 5{
            
        }
        
        
        
    }
    
    
    
}