//
//  UIView+Corners.swift
//  UIViewToolkit_Example
//
//  Created by Anthony Di Tomasso on 15/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

extension UIView {


    //Used for choose precisely corners we want rounded

    public func round(corners:UIRectCorner = [.bottomLeft , .bottomRight , .topLeft, .topRight], radius: CGFloat) {
        clipsToBounds = true
        layer.cornerRadius = radius
        layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
    }
    
}
