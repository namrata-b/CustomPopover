//
//  TouchForwardingView.swift
//  Sample
//
//  Created by Namrata Bandekar on 2017-08-27.
//  Copyright © 2017 Namrata Bandekar. All rights reserved.
//

import UIKit

final class TouchForwardingView: UIView {
    
    final var passthroughViews: [UIView] = []
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        guard let hitView = super.hitTest(point, with: event) else { return nil }
        guard hitView == self else { return hitView }
        
        for passthroughView in passthroughViews {
            let point = convert(point, to: passthroughView)
            if let passthroughHitView = passthroughView.hitTest(point, with: event) {
                return passthroughHitView
            }
        }
        
        return self
    }
}
