//
//  UIView+Corners.swift
//  FBSnapshotTestCase
//
//  Created by Anthony Di Tomasso on 21/11/2019.
//

import UIKit

extension UIView {


    public func round(corners:UIRectCorner = [.bottomLeft , .bottomRight , .topLeft, .topRight], radius: CGFloat) {
        
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        
        self.layer.mask = mask
    }
    
    public func toCircle() {
        round(radius: self.frame.width / 2)
    }

}
