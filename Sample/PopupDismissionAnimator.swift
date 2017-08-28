//
//  PopupDismissionAnimator.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-27.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

class PopupDismissionAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let fromViewController = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)
//        let containerView = transitionContext.containerView
        
        let animationDuration = transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: animationDuration, animations: {
            fromViewController?.view.transform = CGAffineTransform.init(translationX: 0, y: -42)
            fromViewController?.view.alpha = 1.0
        }, completion: { (finished) in
            fromViewController?.view.alpha = 0.0
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })
    }
}
