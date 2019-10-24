//
//  DesignCell.swift
//  UITableViewCell action using segue
//
//  Created by Devansh Shah on 23/10/2019.
//  Copyright © 2019 Aman Aggarwal. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class DesignCell : UIView {
    
    @IBInspectable var cornerRadius : CGFloat = 0
    @IBInspectable var shadowColor : UIColor? = UIColor.black
    @IBInspectable var shadowOffSetWidth : Int = 0
    @IBInspectable var shadowOffsetHeight : Int = 1
    @IBInspectable var shadowOpacity : Float = 0.2
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffsetHeight)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
        
    }
    
    
    
    
    
     
}
