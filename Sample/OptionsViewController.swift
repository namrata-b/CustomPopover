//
//  OptionsViewController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-11.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {
 
    let highlightedColour = UIColor.init(red: 45.0/255.0, green: 51.0/255.0, blue: 59.0/255.0, alpha: 1)
    let normalColour = UIColor.init(red: 56.0/255.0, green: 63.0/255.0, blue: 72.0/255.0, alpha: 1)
    
    var delegate: OptionsMenuDelegate?
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.darkGray//UIColor.init(red: 56.0/255.0, green: 63.0/255.0, blue: 72.0/255.0, alpha: 1)
        
        buildOption1()
        buildOption2()
    }
    
    private func buildOption1() {
        let optionButton = buildButton()
        optionButton.setTitle("OPTION 1", for: .normal)
        
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0))
        optionButton.addTarget(self, action: #selector(self.option1Tapped), for: .touchUpInside)
    }
    
    private func buildOption2() {
        let optionButton = buildButton()
        optionButton.setTitle("OPTION 2", for: .normal)
        
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: optionButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: 0))
        optionButton.addTarget(self, action: #selector(self.option2Tapped), for: .touchUpInside)
    }
    
    private func buildButton() -> UIButton {
        let optionButton = UIButton.init()
        optionButton.translatesAutoresizingMaskIntoConstraints = false
        optionButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        
        let highlightedBackground = imageWithColor(color: highlightedColour)
        optionButton.setBackgroundImage(highlightedBackground, for: .highlighted)
        
        let normalBackground = imageWithColor(color: normalColour)
        optionButton.setBackgroundImage(normalBackground, for: .normal)
        
        optionButton.contentEdgeInsets = UIEdgeInsetsMake(13, 10, 13, 10)        
        
        self.view.addSubview(optionButton)
        
        return optionButton
    }
    
    func option1Tapped() {
        self.delegate?.option1MenuItemSelected()
        dismiss(animated: true, completion: nil)
    }
    
    func option2Tapped() {
        self.delegate?.option2MenuItemSelected()
        dismiss(animated: true, completion: nil)
    }
    
    func imageWithColor(color: UIColor) -> UIImage? {
        let rect = CGRect.init(x: 0, y: 0, width: 1, height: 1)
        
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
}

public protocol OptionsMenuDelegate {
    func option1MenuItemSelected()
    func option2MenuItemSelected()
}
