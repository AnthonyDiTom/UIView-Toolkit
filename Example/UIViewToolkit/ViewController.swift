//
//  ViewController.swift
//  UIViewToolkit
//
//  Created by Anthony Di Tomasso on 11/20/2019.
//  Copyright (c) 2019 Anthony Di Tomasso. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showLayoutDemo(_ sender: Any) {
        navigationController?.pushViewController(LayoutsViewController(), animated: true)
    }
}

