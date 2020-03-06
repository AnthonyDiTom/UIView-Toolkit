//
//  ScrollableStackView.swift
//  UIViewToolkit_Example
//
//  Created by Anthony Di Tomasso on 15/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//


import UIKit


open class ScrollableStackView: UIScrollView {

    public lazy var stackView: UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .white
        sv.alignment = .fill
        sv.spacing = 0
        sv.distribution = .equalSpacing
        sv.axis = .vertical
        
        return sv
    }()
    
    public init() {
        
        super.init(frame: .zero)
        backgroundColor = .clear
        drawConstraints()
        showsVerticalScrollIndicator = false
    }
    
    private func drawConstraints() {
        
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        stackView.fillSuperview()
        stackView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func removeAllArrangedSubViews() {
        stackView.removeAllArrangedSubviews()
    }
    
    public func addArrangedSubview(_ view:UIView) {
        stackView.addArrangedSubview(view)
        view.leadAndTrailSuperView()
    }
    
    public func addVerticalSpacing(height: CGFloat, color: UIColor = .white) {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: height).isActive = true
        view.backgroundColor = color
        
        addArrangedSubview(view)
    }
    
    public func addLine(lineColor: UIColor, backgroudColor: UIColor = .clear, marginLeft: CGFloat = 0, marginRight: CGFloat = 0) {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 3).isActive = true
        view.backgroundColor = backgroudColor
        
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.backgroundColor = lineColor
        view.addSubview(line)
        
        line.centerInSuperview()
        
        line.anchor(
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            margin: .init(top: 0, left: marginLeft, bottom: 0, right: marginRight)
        )
        
        addArrangedSubview(view)
    }
    
    public func addHeader(
        title: String,
        color: UIColor = .black,
        backgroundColor: UIColor = .clear,
        font: UIFont = UIFont.systemFont(ofSize: 16),
        margin: UIEdgeInsets = .zero
    ) {
        
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = backgroundColor
        let label = UILabel()
        label.text = title
        label.font = font
        label.textColor = color
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        label.fillSuperview(margin: margin)
        
        addArrangedSubview(view)
    }
    
    
    
}
