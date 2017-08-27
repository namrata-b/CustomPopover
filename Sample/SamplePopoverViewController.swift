//
//  SampleViewController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-11.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import Foundation
import UIKit

class SamplePopoverViewController: UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.white
        
        self.title = "Sample"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "nav-more"), style: .plain, target: self, action: #selector(self.moreTapped))
    }
    
    func moreTapped(_ sender:UIButton) {
        print("moreTapped")
        
        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.red
        viewController.modalPresentationStyle = .popover
//        viewController.modalTransitionStyle = .coverVertical
        viewController.preferredContentSize = CGSize.init(width: 10, height: 20)
        
        let popOverPresentationController = viewController.popoverPresentationController
        popOverPresentationController?.delegate = self
        let testview = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 10, height: 20))
        testview.backgroundColor = UIColor.black
        popOverPresentationController?.sourceView = testview
        popOverPresentationController?.sourceRect = CGRect.init(x: 150, y: 300, width: 1, height: 1)//sender.frame
        popOverPresentationController?.permittedArrowDirections = .up
        popOverPresentationController?.backgroundColor = UIColor.green
        
        self.present(viewController, animated: true, completion: nil)
        
    }
}

extension SamplePopoverViewController: UIPopoverPresentationControllerDelegate {
    
}
