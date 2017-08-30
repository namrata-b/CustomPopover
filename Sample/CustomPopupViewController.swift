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
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        
        self.title = "Sample"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "nav-more"), style: .plain, target: self, action: #selector(self.moreTapped))
    }
    
    func moreTapped(_ sender:UIButton) {
        let optionsVC = OptionsViewController()
        optionsVC.delegate = self
        
        optionsVC.modalPresentationStyle = .custom
        optionsVC.transitioningDelegate = popupTransitioningDelegate
        
        self.present(optionsVC, animated: true) {
        }
    }
    
}

extension CustomPopupViewController: OptionsMenuDelegate {
    func option1MenuItemSelected() {
        // TODO: do something
        print("option1MenuItemSelected")
    }
    
    func option2MenuItemSelected() {
        // TODO: do something
        print("option2MenuItemSelected")
    }
}

