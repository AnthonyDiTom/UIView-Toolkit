//
//  UIView+shaking.swift
//  Pods-UIViewToolkit_Example
//
//  Created by Anthony Di Tomasso on 15/01/2020.
//

import UIKit

extension UIView {
    
    public func shake(count : Float = 5, for duration: TimeInterval = 0.5 ,withTranslation translation: Float = 5) {

        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.repeatCount = count
        animation.duration = duration/TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.values = [translation, -translation]
        layer.add(animation, forKey: "shake")
    }
    

}
