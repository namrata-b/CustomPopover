//
//  CustomPopupViewController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-27.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class CustomPopupViewController: UIViewController {
    let popupTransitioningDelegate = PopupTransitioningDelegate()
    var menuShowing = false
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        
        self.title = "Sample"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "nav-more"), style: .plain, target: self, action: #selector(self.moreTapped))
    }
    
    func moreTapped(_ sender:UIButton) {    
       
        if !self.menuShowing {
            let optionsVC = OptionsViewController()
            
            optionsVC.modalPresentationStyle = .custom
            optionsVC.transitioningDelegate = popupTransitioningDelegate
            
            self.present(optionsVC, animated: true) {
//                self.menuShowing = true
            }
        }
        
    }
        
}

