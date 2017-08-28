//
//  SampleViewController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-11.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class SamplePopoverViewController: UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        
        self.title = "Sample"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "nav-more"), style: .plain, target: self, action: #selector(self.moreTapped))
    }
    
    func moreTapped(_ sender:UIButton) {        
        
        let viewController = OptionsViewController()
        
        viewController.modalPresentationStyle = .popover
        viewController.preferredContentSize = CGSize.init(width: 150, height: 83)
        
        let popOverPresentationController = viewController.popoverPresentationController
        popOverPresentationController?.delegate = self
        popOverPresentationController?.sourceView = self.navigationController?.view
        popOverPresentationController?.sourceRect = CGRect.init(x: UIScreen.main.bounds.width-170, y: 120, width: 150, height: 1)//sender.frame
        popOverPresentationController?.permittedArrowDirections = []
        
        self.present(viewController, animated: true, completion: nil)
        
    }
}

extension SamplePopoverViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}
