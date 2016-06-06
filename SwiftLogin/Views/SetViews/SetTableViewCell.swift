//
//  SetTableViewCell.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/6.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit


class SetTableViewCell: UITableViewCell {
    
    var TitleLable:UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        
        self.backgroundColor = UIColor(hue:0.67, saturation:0.00, brightness:0.94, alpha:1.00);
        
        TitleLable = UILabel();
        TitleLable?.frame = CGRectMake(20, 0, screenWideth - 20, 45);
        TitleLable?.textColor = UIColor(hue:0.00, saturation:0.00, brightness:0.34, alpha:1.00);
        self.addSubview(TitleLable!);
        
    }
    
    internal func ConfigerTitleLable(text:NSString) -> Void{
        
        if text .isEqualToString("退出登录") {
            TitleLable?.frame = CGRectMake(0, 0, screenWideth, 45);
            TitleLable?.textAlignment = NSTextAlignment.Center;
            TitleLable?.textColor = UIColor(hue:0.99, saturation:0.89, brightness:0.87, alpha:1.00);
        }
        
        TitleLable?.text = text as String;
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}