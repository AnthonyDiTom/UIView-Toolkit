//
//  UIView+Corners.swift
//  FBSnapshotTestCase
//
//  Created by Anthony Di Tomasso on 21/11/2019.
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
