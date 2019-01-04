//
//  ViewController.swift
//  TinderLabs
//
//  Created by Cyril Garcia on 1/3/19.
//  Copyright © 2019 Cyril Garcia. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.orange
        self.scrollViewSetup()
        self.controllerSetup()
    }

    private func scrollViewSetup() {
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        self.scrollView = {
            let scrollView = UIScrollView(frame: self.view.bounds)
            scrollView.backgroundColor = UIColor.red
            scrollView.isPagingEnabled = true
            scrollView.contentSize = CGSize(width: width * 3, height: height)
            scrollView.contentOffset = CGPoint(x: width, y: 0)
            return scrollView
        }()
        
        self.view.addSubview(self.scrollView)
        
    }
    private func controllerSetup() {
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        let leftVC = LeftViewController()
        leftVC.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
        self.scrollView.addSubview(leftVC.view)
        self.addChild(leftVC)
        
        let homeVC = HomeViewController()
        homeVC.view.frame = CGRect(x: width, y: 0, width: width, height: height)
        self.scrollView.addSubview(homeVC.view)
        self.addChild(homeVC)
        
        let rightVC = RightViewController()
        rightVC.view.frame = CGRect(x: width * 2, y: 0, width: width, height: height)
        self.scrollView.addSubview(rightVC.view)
        self.addChild(rightVC)
        
        
        
    }

}

