//
//  UIView+Corners.swift
//  
//
//  Created by Anthony Di Tomasso on 03/03/2020.
//

import UIKit

extension UIView {
    
    
    public func anchor(
        
        top: NSLayoutYAxisAnchor? = nil,
        leading: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        trailing: NSLayoutXAxisAnchor? = nil,
        margin: UIEdgeInsets = .zero,
        size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: margin.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: margin.left).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -margin.bottom).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -margin.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }

    public func fillSuperview(margin: UIEdgeInsets = .zero) {
        
        guard let superview = superview else {
            print("Can't fill superview with \(self), because superview is nil")
            return
        }
        
        anchor(
            top: superview.topAnchor,
            leading: superview.leadingAnchor,
            bottom: superview.bottomAnchor,
            trailing: superview.trailingAnchor,
            margin: margin
        )
    }
    
    public func fillSuperview(margin: CGFloat) {

        fillSuperview(margin: .init(top: margin, left: margin, bottom: margin, right: margin))
    }
    
    public func leadAndTrailSuperView(margin: CGFloat = 0) {
        
        guard let superview = superview else {
            print("Can't apply, leadAndTrailSuperView no superview found")
            return
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: margin).isActive = true
        self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: margin * -1).isActive = true
        
    }
    
    public func centerInSuperview() {
        
        guard let superview = superview else {
            print("Can't center \(self), because superview is nil")
            return
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
        centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
    }
    
    public func anchorSize(width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    public func anchorSize(to view: UIView) {
        
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
}
