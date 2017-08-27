//
//  ViewController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-10.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        buildSample1()
        buildSample2()
        
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 56.0/255.0, green: 63.0/255.0, blue: 72.0/255.0, alpha: 1)
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    private func buildSample1() {
        let sampleButton = buildButton()
        sampleButton.setTitle("Sample 1", for: .normal)
        
        self.view.addConstraint(NSLayoutConstraint.init(item: sampleButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: sampleButton, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: -40))
        sampleButton.addTarget(self, action: #selector(self.sample1Tapped), for: .touchUpInside)
    }
    
    private func buildSample2() {
        let sampleButton = buildButton()
        sampleButton.setTitle("Sample 2", for: .normal)
        
        self.view.addConstraint(NSLayoutConstraint.init(item: sampleButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint.init(item: sampleButton, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1.0, constant: 40))
        sampleButton.addTarget(self, action: #selector(self.sample2Tapped), for: .touchUpInside)
    }
    
    private func buildButton() -> UIButton {
        let sampleButton = UIButton.init()
        sampleButton.translatesAutoresizingMaskIntoConstraints = false
        
        sampleButton.backgroundColor = UIColor.gray
        sampleButton.contentEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        sampleButton.layer.cornerRadius = 7.0
        
        self.view.addSubview(sampleButton)
        
        return sampleButton
    }

    func sample1Tapped() {
        
        let sampleVC = SamplePopoverViewController()
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        self.navigationItem.backBarButtonItem = backItem
        self.navigationController?.pushViewController(sampleVC, animated: true)
        
    }

    func sample2Tapped() {
        
        let sampleVC = SamplePopoverViewController()
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        self.navigationItem.backBarButtonItem = backItem
        self.navigationController?.pushViewController(sampleVC, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

