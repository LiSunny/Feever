//
//  HomeTableViewCell.swift
//  SwiftLogin
//
//  Created by HeavenLi on 16/6/3.
//  Copyright © 2016年 HeavenLi. All rights reserved.
//

import Foundation
import UIKit

class HomeTableViewCell: UITableViewCell {
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        
        self.backgroundColor = UIColor(hue:0.00, saturation:0.00, brightness:0.98, alpha:1.00);
        
        let titleLable = UILabel(frame:CGRectMake(20,11,72,23));
        titleLable.text = "荷单小郑";
        titleLable.textColor = UIColor(hue:0.00, saturation:0.00, brightness:0.61, alpha:1.00);
        titleLable.font = UIFont.init(name: "Hiragino Maru Gothic Pro", size: 18);
        self.addSubview(titleLable);
        
        let image = UIImage.init(named: "Image");
        
        let imageView = UIImageView.init(image: image);
        imageView.frame = CGRectMake(27, 42, 323, 146);
        imageView.layer.cornerRadius = 10;
        imageView.clipsToBounds = true;
        self.addSubview(imageView);
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    internal func initWith(style:UITableViewCellStyle, reuseldentifier:String? ,CellHeight:CGFloat) -> UITableViewCell{
//        
//        self.backgroundColor = UIColor(hue:0.00, saturation:0.00, brightness:0.98, alpha:1.00);
//        
//        let titleLable = UILabel(frame:CGRectMake(20,11,72,23));
//        titleLable.text = "荷单小郑";
//        titleLable.textColor = UIColor(hue:0.00, saturation:0.00, brightness:0.61, alpha:1.00);
//        titleLable.font = UIFont.init(name: "Hiragino Maru Gothic Pro", size: 18);
//        self.addSubview(titleLable);
//        
//        let image = UIImage.init(named: "image");
//        
//        let imageView = UIImageView.init(image: image);
//        imageView.frame = CGRectMake(27, 42, 323, 146);
//        imageView.layer.cornerRadius = 10;
//        imageView.clipsToBounds = true;
//        self.addSubview(imageView);
//        
//        
//        
//        return self;
//    }
    
    
    
    
}