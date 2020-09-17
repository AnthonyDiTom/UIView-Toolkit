//
//  LayoutsViewController.swift
//  UIViewToolkit_Example
//
//  Created by Anthony Di Tomasso on 15/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import UIViewToolkit

class LayoutsViewController: UIViewController {

    let borderMargin: CGFloat = 12.0
    let cornerRadius: CGFloat = 10.0

    let redView = UIView()
    let blueView = UIView()
    let greenView = UIView()
    let yellowView = UIView()
    let purpleView = UIView()
    let grayView = UIView()
    let centeredView = UIView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationItem.title = "Layouts Demo"
        setupColors()
        
    }
    
    override func loadView() {
        
        super.loadView()
        
        //UIView + Layers
        drawConstraints()
        
        //UIView+Corners
        roundCorners()
    }
    
    func drawConstraints() {
        
        [redView, blueView, greenView].forEach { view.addSubview($0) }

        redView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            margin: .init(top: borderMargin, left: 0, bottom: 0, right: borderMargin),
            size: .init(width: 125, height: 125)
        )
        
        blueView.anchor(
            top: redView.bottomAnchor,
            trailing: redView.trailingAnchor,
            margin: .init(top: borderMargin, left: 0, bottom: 0, right: 0)
        )
        blueView.anchorSize(to: redView)
        
        
        greenView.anchor(
            top: redView.topAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            bottom: blueView.bottomAnchor,
            trailing: redView.leadingAnchor,
            margin: .init(top: 0, left: borderMargin, bottom: 0, right: borderMargin)
        )
        
        greenView.addSubview(yellowView)
        yellowView.fillSuperview(margin: borderMargin)
        
        redView.addSubview(purpleView)
        purpleView.fillSuperview(margin: .init(top: 5, left: borderMargin, bottom: 5, right: borderMargin))
        
        yellowView.addSubview(centeredView)
        centeredView.centerInSuperview()
        centeredView.anchorSize(width:20, height: 20)
        
        blueView.addSubview(grayView)
        grayView.anchorSidesSize(20)
        grayView.centerVerticalyInSuperview()
        grayView.centerHorizontalyInSuperview()
    }
    
    func setupColors() {
        
        view.backgroundColor = .white
        redView.backgroundColor = .red
        blueView.backgroundColor = .blue
        greenView.backgroundColor = .green
        yellowView.backgroundColor = .yellow
        purpleView.backgroundColor = .purple
        centeredView.backgroundColor = .brown
        grayView.backgroundColor = .darkGray
    }
    
    func roundCorners() {
        
        [redView, blueView, greenView, yellowView, centeredView].forEach {
            $0.round(radius: cornerRadius)
        }
        
        purpleView.round(corners: [.bottomLeft , .topRight], radius: cornerRadius)
        
    }

}
