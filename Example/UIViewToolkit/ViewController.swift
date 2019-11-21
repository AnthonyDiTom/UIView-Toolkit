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
    
    //test for gitub
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        [redView, blueView, greenView].forEach { view.addSubview($0) }
        
        redView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: borderPadding),
            size: .init(width: 125, height: 0)
        )
        redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        
        
        blueView.anchor(
            top: redView.bottomAnchor,
            trailing: redView.trailingAnchor,
            padding: .init(top: borderPadding, left: 0, bottom: 0, right: 0)
        )
        blueView.anchorSize(to: redView)
        
        
        greenView.anchor(top: redView.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: blueView.bottomAnchor, trailing: redView.leadingAnchor, padding: .init(top: 0, left: borderPadding, bottom: 0, right: borderPadding))
        
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        greenView.addSubview(yellowView)
        yellowView.fillSuperview(padding: borderPadding)
        
        
        let purpleView = UIView()
        purpleView.backgroundColor = .purple
        redView.addSubview(purpleView)
        purpleView.fillSuperview(padding: .init(top: 5, left: borderPadding, bottom: 5, right: borderPadding))
        
        let centeredView = UIView()
        centeredView.backgroundColor = .brown
        yellowView.addSubview(centeredView)
        centeredView.centerInSuperview()
        centeredView.anchorSize(width:50, height: 50)

    }
    
}

