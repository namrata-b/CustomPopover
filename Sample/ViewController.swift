//
//  ViewController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-10.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        buildSample1()
        
    }
    
    private func buildSample1() {
        
        let sampleButton = UIButton.init()
        sampleButton.translatesAutoresizingMaskIntoConstraints = false
        sampleButton.setTitle("Sample1", for: .normal)
        sampleButton.backgroundColor = UIColor.gray
        sampleButton.contentEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        sampleButton.layer.cornerRadius = 7.0
        
        self.view.addSubview(sampleButton)
        
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[sample(40)]", options: [], metrics: nil, views: ["sample" : sampleButton]))
        self.view.addConstraint(NSLayoutConstraint.init(item: sampleButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0))
        
        sampleButton.addTarget(self, action: #selector(self.sample1Tapped), for: .touchUpInside)
    }

    func sample1Tapped() {
        print("tapped")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

