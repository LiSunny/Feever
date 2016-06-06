//
//  PersonTopView.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/6.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class PersonTopView: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        self.CreatBgImageView(frame.size.width, heigh: frame.size.height);
        
    }
    
    func CreatBgImageView(width:CGFloat,heigh:CGFloat) -> Void {
        
        let image = UIImage(named: "bg");
        let bgImage = UIImageView(image: image);
        bgImage.frame = CGRectMake(0, 0, width, heigh);
        self.addSubview(bgImage);
        
        //添加头像
        let iconImage = UIImage(named: "personIcon");
        let iconImageView = UIImageView(image: iconImage);
        iconImageView.frame = CGRectMake(152, 33, 71, 71);
        bgImage.addSubview(iconImageView);
        
        //添加名称
        let  nameLable = UILabel();
        nameLable.frame = CGRectMake(0, 116, screenWideth, 23);
        nameLable.textAlignment = NSTextAlignment.Center;
        nameLable.textColor = UIColor.whiteColor();
        nameLable.text = "来自北方的魔鬼🍉";
        bgImage.addSubview(nameLable);
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}