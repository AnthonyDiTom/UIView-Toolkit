//
//  ShackingViewController.swift
//  UIViewToolkit_Example
//
//  Created by Anthony Di Tomasso on 15/01/2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import UIViewToolkit

class ShakingViewController: UIViewController {

    @IBOutlet weak var square: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func shacke(_ sender: Any) {
        square.shake()
        
    }
    


}
