//
//  ShackingViewController.swift
//  UIViewToolkit_Example
//
//  Created by Anthony Di Tomasso on 15/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import UIViewToolkit

class ScrollableStackViewController: UIViewController {

    let margin: CGFloat = 16
    
    let scrollableStackView = ScrollableStackView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationItem.title = "ScrollableStackView Demo"
        addViewsToStack()
    }
    
    override func loadView() {
        super.loadView()
        setupScrollableStack()
    }
    
    func setupScrollableStack() {
        
        view.addSubview(scrollableStackView)
        scrollableStackView.backgroundColor = .white
        scrollableStackView.fillSuperview()
    }
    
    func addViewsToStack() {
        
        scrollableStackView.addHeader(
            title: "A header",
            margin: .init(top: margin, left: margin, bottom: 4, right: margin)
        )
        
        scrollableStackView.addLine(
            lineColor: .blue,
            marginLeft: margin,
            marginRight: margin
        )
        
        scrollableStackView.addVerticalSpacing(height: margin)
        scrollableStackView.addArrangedSubview(blockView(height: 100, color: .lightGray))
        
        scrollableStackView.addVerticalSpacing(height: margin)
        scrollableStackView.addArrangedSubview(blockView(height: 100, color: .lightGray))
        
        scrollableStackView.addHeader(
            title: "Another header",
            margin: .init(top: margin, left: margin, bottom: 4, right: margin)
        )
        
        scrollableStackView.addLine(
            lineColor: .blue,
            marginLeft: margin,
            marginRight: margin
        )
        
        scrollableStackView.addVerticalSpacing(height: margin)
        
        scrollableStackView.addArrangedSubview(blockView(height: 300, color: .lightGray))
        scrollableStackView.addVerticalSpacing(height: margin)
        
        scrollableStackView.addArrangedSubview(blockView(height: 100, color: .lightGray))

        
    }
    
    func blockView(height: CGFloat, color: UIColor) -> UIView {
        
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: height).isActive = true
        view.round(radius: 15)
        
        containerView.addSubview(view)
        view.fillSuperview(margin: .init(top: 0, left: margin, bottom: 0, right: margin))
        
        return containerView
    }

}
