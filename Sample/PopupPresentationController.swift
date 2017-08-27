//
//  PopupPresentationController.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-27.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class PopupPresentationController: UIPresentationController {
    var touchForwardingView: TouchForwardingView!
    
    override open var frameOfPresentedViewInContainerView: CGRect {
        let height: CGFloat = 200
        return CGRect(x: 50, y: height, width: 150, height: height)
    }
    
    override func containerViewWillLayoutSubviews() {
        presentedView?.frame = frameOfPresentedViewInContainerView
    }
    
    override func presentationTransitionWillBegin() {
        super.presentationTransitionWillBegin()
        touchForwardingView = TouchForwardingView(frame: containerView!.bounds)
        touchForwardingView.passthroughViews = [presentingViewController.view];
        containerView?.insertSubview(touchForwardingView, at: 0)
    }
}
