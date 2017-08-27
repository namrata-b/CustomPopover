//
//  PopupPresentationAnimator.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-27.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class PopupPresentationAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let toViewController = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)
        let containerView = transitionContext.containerView
        
        let animationDuration = transitionDuration(using: transitionContext)
        
        if let toViewController = toViewController {
            toViewController.view.transform = CGAffineTransform(translationX: 0, y: -40)//-containerView.bounds.width)
            toViewController.view.layer.shadowColor = UIColor.black.cgColor
            toViewController.view.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            toViewController.view.layer.shadowOpacity = 0.3
            toViewController.view.layer.cornerRadius = 4.0
            toViewController.view.clipsToBounds = true
            
            containerView.addSubview(toViewController.view)
            
            UIView.animate(withDuration: animationDuration, animations: {
                toViewController.view.transform = CGAffineTransform.identity
            }, completion: { (finished) in
                transitionContext.completeTransition(finished)
            })
        }
    }
}
