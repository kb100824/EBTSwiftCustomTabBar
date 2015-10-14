//
//  ImageWithColor.swift
//  EBTSwiftDemo
//
//  Created by ebaotong on 15/10/14.
//  Copyright (c) 2015年 com.csst. All rights reserved.
//

import Foundation
//MARK: 用颜色来充当背景图
extension UIImage
{
  class func imageWithColor(color: UIColor)->UIImage
    {
        let rect:CGRect = CGRectMake(0, 0, 1, 1)
        UIGraphicsBeginImageContext(rect.size)
        let context:CGContextRef = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image:UIImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext()
        return image
    
    }
  
}

