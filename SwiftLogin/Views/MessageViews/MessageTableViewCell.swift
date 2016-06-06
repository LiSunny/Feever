//
//  MessageTableViewCell.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/6.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class MessageTableViewCell: UITableViewCell {
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style,reuseIdentifier:reuseIdentifier);
        
        //添加imageView
        let image = UIImage(named: "icon");
        let imageView = UIImageView(image: image);
        imageView.frame = CGRectMake(14, 11, 52, 52);
        self.addSubview(imageView);
        
        //添加文本
        let  lable = UILabel();
        lable.text = "评论";
        lable.frame = CGRectMake(91, 19, 0, 0);
        lable.sizeToFit();
        lable.font = UIFont.init(name: "PingFang SC", size: 24);
        lable.textColor = UIColor.blackColor();
        self.addSubview(lable);
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}