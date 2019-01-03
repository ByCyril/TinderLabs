//
//  HomeViewController.swift
//  TinderLabs
//
//  Created by Cyril Garcia on 1/3/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.UISetup()
    }
    
    private func UISetup() {
        
        self.view.backgroundColor = .white
        
        let width: CGFloat = 100
        let height: CGFloat = 25
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height))
        label.center = self.view.center
        label.text = "Home View Controller"
        label.textColor = .black
        self.view.addSubview(label)
        
    }
}
