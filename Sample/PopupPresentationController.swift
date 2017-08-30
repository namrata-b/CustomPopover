//
//  PopupPresentationController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-27.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class PopupPresentationController: UIPresentationController {    
    
    override open var frameOfPresentedViewInContainerView: CGRect {
        let height: CGFloat = 83
        return CGRect(x: UIScreen.main.bounds.width-170, y: 100, width: 150, height: height)
    }
    
    override func containerViewWillLayoutSubviews() {
        presentedView?.frame = frameOfPresentedViewInContainerView
    }
    
    override func presentationTransitionWillBegin() {
        super.presentationTransitionWillBegin()
        
        let tapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(self.backgroundTapped))
        containerView?.addGestureRecognizer(tapGestureRecognizer)
        
        containerView?.insertSubview(UIView.init(frame: containerView!.bounds), at: 0)
    }
    
    func backgroundTapped() {
        //dismiss popover
        presentedViewController.dismiss(animated: true, completion: nil)
    }
}
