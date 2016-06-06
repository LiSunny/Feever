//
//  PersonTableViewCell.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/6.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class PersonTableViewCell: UITableViewCell {
    
    var titleLable:UILabel?
    var inforLable:UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier
        );
        self.backgroundColor = UIColor(hue:0.67, saturation:0.00, brightness:0.94, alpha:1.00);
        
        titleLable = UILabel();
        titleLable?.frame = CGRectMake(20, 0, 100, 45);
        titleLable?.font = UIFont.init(name: "PingFang SC", size: 14);
        titleLable?.textColor = UIColor(hue:0.00, saturation:0.00, brightness:0.34, alpha:1.00);
        self.addSubview(titleLable!);
        
        inforLable = UILabel();
        inforLable?.frame = CGRectMake(140, 0, screenWideth - 140 - 20, 45);
        inforLable?.font = UIFont.init(name: "PingFang SC", size: 14);
        inforLable?.textColor = UIColor(hue:0.00, saturation:0.00, brightness:0.34, alpha:1.00);
        self.addSubview(inforLable!);

    }
    
    internal func CongfigerCell(dic:NSDictionary ) -> Void{
        
        print(dic);
        
        titleLable?.text = dic.objectForKey("main") as? String;
        inforLable?.text = dic.objectForKey("ps") as? String;
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}