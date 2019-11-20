

import UIKit

extension UIView {
    

    public func fillSuperview(padding: UIEdgeInsets = .zero) {
        
        guard let superview = superview else {
            print("Can't fill superview with \(self), because superview is nil")
            return
        }
        
        anchor(
            top: superview.topAnchor,
            leading: superview.leadingAnchor,
            bottom: superview.bottomAnchor,
            trailing: superview.trailingAnchor,
            padding: padding
        )
    }
    
    public func fillSuperview(padding: CGFloat) {

        fillSuperview(padding: .init(top: padding, left: padding, bottom: padding, right: padding))
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
    
    public func anchorSize(width:CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    public func anchorSize(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    public func anchor(
        top: NSLayoutYAxisAnchor? = nil,
        leading: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        trailing: NSLayoutXAxisAnchor? = nil,
        padding: UIEdgeInsets = .zero,
        size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    
}
