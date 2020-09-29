//
//  UIStackView+Helpers.swift
//  UIViewToolkit_Example
//
//  Created by Anthony Di Tomasso on 15/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//


import UIKit

extension UIStackView {
    
    public func removeAllArrangedSubviews() {
        
        let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }
        
        // Deactivate all constraints
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
        
        // Remove the views from self
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
    
    public func addSpacing(_ size: CGFloat, color: UIColor = .clear) {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = color
        addArrangedSubview(view)
        
        switch axis {
        case .horizontal:
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: size),
                view.topAnchor.constraint(equalTo: topAnchor),
                view.bottomAnchor.constraint(equalTo: bottomAnchor)
                
            ])
        case .vertical:
            view.heightAnchor.constraint(equalToConstant: size).isActive = true
            view.leadAndTrailSuperView()
        @unknown default:
            break
        }
        
        
        
    }
}
