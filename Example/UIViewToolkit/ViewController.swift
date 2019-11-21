//
//  ViewController.swift
//  UIViewToolkit
//
//  Created by Anthony Di Tomasso on 11/20/2019.
//  Copyright (c) 2019 Anthony Di Tomasso. All rights reserved.
//

import UIKit
import UIViewToolkit

class ViewController: UIViewController {
    
    let borderPadding: CGFloat = 12.0
    let cornerRadius: CGFloat = 5.0

    let redView = UIView()
    let blueView = UIView()
    let greenView = UIView()
    let yellowView = UIView()
    let purpleView = UIView()
    let centeredView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupColors()
        
        //UIView + Layers
        positioningViews()

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //UIView+Corners
        roundCorners()
        
    }
    
    func positioningViews() {
        
        [redView, blueView, greenView].forEach { view.addSubview($0) }
        
        redView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: borderPadding),
            size: .init(width: 125, height: 125)
        )
        
        blueView.anchor(
            top: redView.bottomAnchor,
            trailing: redView.trailingAnchor,
            padding: .init(top: borderPadding, left: 0, bottom: 0, right: 0)
        )
        blueView.anchorSize(to: redView)
        
        
        greenView.anchor(top: redView.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: blueView.bottomAnchor, trailing: redView.leadingAnchor, padding: .init(top: 0, left: borderPadding, bottom: 0, right: borderPadding))
        
        greenView.addSubview(yellowView)
        yellowView.fillSuperview(margin: borderPadding)
        
        redView.addSubview(purpleView)
        purpleView.fillSuperview(margin: .init(top: 5, left: borderPadding, bottom: 5, right: borderPadding))
        
        yellowView.addSubview(centeredView)
        centeredView.centerInSuperview()
        centeredView.anchorSize(width:50, height: 50)
    }
    
    func setupColors() {
        
        redView.backgroundColor = .red
        blueView.backgroundColor = .blue
        greenView.backgroundColor = .green
        yellowView.backgroundColor = .yellow
        purpleView.backgroundColor = .purple
        centeredView.backgroundColor = .brown
    }
    
    func roundCorners() {
        
        [redView, blueView, greenView, yellowView].forEach { $0.round(radius: cornerRadius) }
        purpleView.round(corners: [.bottomLeft , .topRight], radius: cornerRadius)
        centeredView.toCircle()
    }
}

