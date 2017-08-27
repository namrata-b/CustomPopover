//
//  OptionsViewController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-11.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {
//    let option1: 
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.init(red: 56.0/255.0, green: 63.0/255.0, blue: 72.0/255.0, alpha: 1)
        
        buildOption1()
        
    }
    
    private func buildOption1() {
        let optionButton = buildButton()
        optionButton.setTitle("OPTION 1", for: .normal)
        
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: -40))
        optionButton.addTarget(self, action: #selector(self.option1Tapped), for: .touchUpInside)
    }
    
    private func buildButton() -> UIButton {
        let optionButton = UIButton.init()
        optionButton.translatesAutoresizingMaskIntoConstraints = false
        
        optionButton.backgroundColor = UIColor.gray
        optionButton.contentEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        optionButton.layer.cornerRadius = 7.0
        
        self.view.addSubview(optionButton)
        
        return optionButton
    }
    
    func option1Tapped() {
        
        dismiss(animated: true, completion: nil)
    }
}
